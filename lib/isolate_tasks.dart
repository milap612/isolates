import 'dart:isolate';

void factorialTask(SendPort sendPort) {
  try {
    int n = 20;
    int result = 1;
    for (int i = 1; i <= n; i++) {
      result *= i;
    }
    sendPort.send(result);
  } catch (e) {
    sendPort.send('Error: ${e.toString()}');
  }
}

void primeTask(SendPort sendPort) {
  try {
    int count = 0;
    for (int i = 2; i < 100000; i++) {
      if (_isPrime(i)) count++;
    }
    sendPort.send(count);
  } catch (e) {
    sendPort.send('Error: ${e.toString()}');
  }
}

bool _isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void fibonacciTask(SendPort sendPort) {
  try {
    int n = 30;
    int a = 0, b = 1, sum = 0;
    for (int i = 0; i < n; i++) {
      int temp = a + b;
      a = b;
      b = temp;
      sum += temp;
    }
    sendPort.send(sum);
  } catch (e) {
    sendPort.send('Error: ${e.toString()}');
  }
}
