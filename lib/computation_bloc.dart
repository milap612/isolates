import 'dart:async';
import 'dart:isolate';

import 'package:bloc/bloc.dart';

import 'computation_event.dart';
import 'computation_state.dart';
import 'isolate_tasks.dart';

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
      await Isolate.spawn(factorialTask, factorialPort.sendPort);
    } catch (e) {
      emit(ComputationState.error('Factorial Calculation', e.toString()));
    }
  }

  FutureOr<void> _startPrimeCheckTask(
      StartPrimeCheck event, Emitter<ComputationState> emit) async {
    emit(const ComputationState.loading('Prime Check'));
    try {
      await Isolate.spawn(primeTask, primePort.sendPort);
    } catch (e) {
      emit(ComputationState.error('Prime Check', e.toString()));
    }
  }

  FutureOr<void> _startFibonacciTask(
      StartFibonacci event, Emitter<ComputationState> emit) async {
    emit(const ComputationState.loading('Fibonacci Calculation'));
    try {
      await Isolate.spawn(fibonacciTask, fibonacciPort.sendPort);
    } catch (e) {
      emit(ComputationState.error('Fibonacci Calculation', e.toString()));
    }
  }
}
