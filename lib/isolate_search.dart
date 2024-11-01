import 'dart:convert';
import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


List<Map<String, dynamic>> list = [];
List<Map<String, dynamic>> filteredList = [];
TextEditingController inputController = TextEditingController();
bool searching = false;


void main() async{
  await loadDataFromIsolate();
  inputController.addListener(searchFromIsolate);
  await emulateTextInput();
  inputController.removeListener(searchFromIsolate);
}

Future<void> loadDataFromIsolate() async {
  List<Map<String, dynamic>> result = [];
  final receivePort = ReceivePort();
  await Isolate.spawn(fetchDataIsolate, receivePort.sendPort);
  await for (var response in receivePort) {
    if (response == null) {
      break;
    }
    if (response is Map<String, dynamic>) {
      result.add(response);
      list.add(response);
    }
  }
  print('Isolate execution completed');
}

void fetchDataIsolate(SendPort sendPort) async {
  for (int i = 0; i < 10; i++) {
    sendPort.send(await fetchData(requestCount: 5));
  }
  sendPort.send(null); // Signal completion
}

fetchData({required int requestCount}) async {
  final url = Uri.parse('http://headers.jsontest.com/');
  List<Future<http.Response>> futures = [];
  for (int j = 0; j < requestCount; j++) {
    futures.add(http.get(url));
  }

  try {
    final responses = await Future.wait(futures);

    for (var response in responses) {
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    }
  } catch (e) {
    print('An error occurred: $e');
  }
  return {};
}

Future<void> searchFromIsolate() async {
  searching = true;
  final ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(filterDataIsolate, receivePort.sendPort);
  await for (var response in receivePort) {
    if (response == null) {
      break;
    }
    if (response is List<Map<String, dynamic>>) {
      filteredList = response;
    }
  }
  searching = false;
}

void filterDataIsolate(SendPort sendPort) {
  final input = inputController.text;
  final filteredData = list.where((Map<String, dynamic> map) {
    return map.values.any((e) => e.toString().contains(input));
  }).toList();
  sendPort.send(filteredData);
  sendPort.send(null);
}

Future<void> emulateTextInput() async {
  List<String> words = [];
  for (int i = 0; i < list.length; i++) {
    words.addAll(list[i].values.map((e) => e.value as String).toSet().toList());
  }
  words = words.map((String word) => word.substring(0, min(word.length, 3))).toSet().take(3).toList();

  for (var word in words) {
    final List<String> letters = word.split('');
    String search = '';
    for (String letter in letters) {
      search += letter;
      await inputText(search);
    }
    while (search.isNotEmpty) {
      search = search.substring(0, search.length - 1);
      await inputText(search);
    }
  }
}

Future<void> inputText(String word) async {
  if (!searching) {
    await Future.delayed(const Duration(milliseconds: 500));
    await inputText(word);
  } else {
    inputController.value = TextEditingValue(text: word);
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
