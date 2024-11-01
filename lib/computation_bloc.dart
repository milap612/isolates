import 'dart:async';
import 'dart:isolate';

import 'package:bloc/bloc.dart';

import 'computation_event.dart';
import 'computation_state.dart';

class ComputationBloc extends Bloc<ComputationEvent, ComputationState> {
  final factorialPort = ReceivePort();
  final primePort = ReceivePort();
  final fibonacciPort = ReceivePort();

  ComputationBloc() : super(const ComputationState.initial()) {
    factorialPort.listen(
      (result) {
        emit(ComputationState.loaded(
            'Factorial Calculation', result.toString()));
      },
    );
    primePort.listen(
      (result) {
        emit(ComputationState.loaded('Prime Check', result.toString()));
      },
    );
    fibonacciPort.listen(
          (result) {
        emit(ComputationState.loaded('Fibonacci Check', result.toString()));
      },
    );
    on<StartFactorial>(_startFactorialTask);
    on<StartPrimeCheck>(_startPrimeCheckTask);
    on<StartFibonacci>(_startFibonacciTask);
  }

  FutureOr<void> _startFactorialTask(
      StartFactorial event, Emitter<ComputationState> emit) async {
    emit(const ComputationState.loading('Factorial Calculation'));
    try {
      await Isolate.spawn(_factorialTask, factorialPort.sendPort);
    } catch (e) {
      emit(ComputationState.error('Factorial Calculation', e.toString()));
    }
  }

  FutureOr<void> _startPrimeCheckTask(
      StartPrimeCheck event, Emitter<ComputationState> emit) async {
    emit(const ComputationState.loading('Prime Check'));
    try {
      await Isolate.spawn(_primeTask, primePort.sendPort);
    } catch (e) {
      emit(ComputationState.error('Prime Check', e.toString()));
    }
  }

  FutureOr<void> _startFibonacciTask(
      StartFibonacci event, Emitter<ComputationState> emit) async {
    emit(const ComputationState.loading('Fibonacci Calculation'));
    try {
      await Isolate.spawn(_fibonacciTask, fibonacciPort.sendPort);
    } catch (e) {
      emit(ComputationState.error('Fibonacci Calculation', e.toString()));
    }
  }

  static void _factorialTask(SendPort sendPort) {
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

  static void _primeTask(SendPort sendPort) {
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

  static bool _isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  static void _fibonacciTask(SendPort sendPort) {
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
}
