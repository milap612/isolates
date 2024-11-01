import 'package:freezed_annotation/freezed_annotation.dart';

part 'computation_state.freezed.dart';

@freezed
class ComputationState with _$ComputationState {
  const factory ComputationState.initial() = Initial;
  const factory ComputationState.loading(String taskName) = Loading;
  const factory ComputationState.loaded(String taskName, String result) = Loaded;
  const factory ComputationState.error(String taskName, String errorMessage) = Error;
}