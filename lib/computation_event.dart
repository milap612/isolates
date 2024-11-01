
import 'package:freezed_annotation/freezed_annotation.dart';

part 'computation_event.freezed.dart';

@freezed
class ComputationEvent with _$ComputationEvent{
  const factory ComputationEvent.startFactorial() = StartFactorial;
  const factory ComputationEvent.startPrimeCheck() = StartPrimeCheck;
  const factory ComputationEvent.startFibonacci() = StartFibonacci;
}
