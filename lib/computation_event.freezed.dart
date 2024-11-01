// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'computation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComputationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFactorial,
    required TResult Function() startPrimeCheck,
    required TResult Function() startFibonacci,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFactorial,
    TResult? Function()? startPrimeCheck,
    TResult? Function()? startFibonacci,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFactorial,
    TResult Function()? startPrimeCheck,
    TResult Function()? startFibonacci,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartFactorial value) startFactorial,
    required TResult Function(StartPrimeCheck value) startPrimeCheck,
    required TResult Function(StartFibonacci value) startFibonacci,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartFactorial value)? startFactorial,
    TResult? Function(StartPrimeCheck value)? startPrimeCheck,
    TResult? Function(StartFibonacci value)? startFibonacci,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartFactorial value)? startFactorial,
    TResult Function(StartPrimeCheck value)? startPrimeCheck,
    TResult Function(StartFibonacci value)? startFibonacci,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComputationEventCopyWith<$Res> {
  factory $ComputationEventCopyWith(
          ComputationEvent value, $Res Function(ComputationEvent) then) =
      _$ComputationEventCopyWithImpl<$Res, ComputationEvent>;
}

/// @nodoc
class _$ComputationEventCopyWithImpl<$Res, $Val extends ComputationEvent>
    implements $ComputationEventCopyWith<$Res> {
  _$ComputationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComputationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartFactorialImplCopyWith<$Res> {
  factory _$$StartFactorialImplCopyWith(_$StartFactorialImpl value,
          $Res Function(_$StartFactorialImpl) then) =
      __$$StartFactorialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartFactorialImplCopyWithImpl<$Res>
    extends _$ComputationEventCopyWithImpl<$Res, _$StartFactorialImpl>
    implements _$$StartFactorialImplCopyWith<$Res> {
  __$$StartFactorialImplCopyWithImpl(
      _$StartFactorialImpl _value, $Res Function(_$StartFactorialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComputationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartFactorialImpl implements StartFactorial {
  const _$StartFactorialImpl();

  @override
  String toString() {
    return 'ComputationEvent.startFactorial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartFactorialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFactorial,
    required TResult Function() startPrimeCheck,
    required TResult Function() startFibonacci,
  }) {
    return startFactorial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFactorial,
    TResult? Function()? startPrimeCheck,
    TResult? Function()? startFibonacci,
  }) {
    return startFactorial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFactorial,
    TResult Function()? startPrimeCheck,
    TResult Function()? startFibonacci,
    required TResult orElse(),
  }) {
    if (startFactorial != null) {
      return startFactorial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartFactorial value) startFactorial,
    required TResult Function(StartPrimeCheck value) startPrimeCheck,
    required TResult Function(StartFibonacci value) startFibonacci,
  }) {
    return startFactorial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartFactorial value)? startFactorial,
    TResult? Function(StartPrimeCheck value)? startPrimeCheck,
    TResult? Function(StartFibonacci value)? startFibonacci,
  }) {
    return startFactorial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartFactorial value)? startFactorial,
    TResult Function(StartPrimeCheck value)? startPrimeCheck,
    TResult Function(StartFibonacci value)? startFibonacci,
    required TResult orElse(),
  }) {
    if (startFactorial != null) {
      return startFactorial(this);
    }
    return orElse();
  }
}

abstract class StartFactorial implements ComputationEvent {
  const factory StartFactorial() = _$StartFactorialImpl;
}

/// @nodoc
abstract class _$$StartPrimeCheckImplCopyWith<$Res> {
  factory _$$StartPrimeCheckImplCopyWith(_$StartPrimeCheckImpl value,
          $Res Function(_$StartPrimeCheckImpl) then) =
      __$$StartPrimeCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartPrimeCheckImplCopyWithImpl<$Res>
    extends _$ComputationEventCopyWithImpl<$Res, _$StartPrimeCheckImpl>
    implements _$$StartPrimeCheckImplCopyWith<$Res> {
  __$$StartPrimeCheckImplCopyWithImpl(
      _$StartPrimeCheckImpl _value, $Res Function(_$StartPrimeCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComputationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartPrimeCheckImpl implements StartPrimeCheck {
  const _$StartPrimeCheckImpl();

  @override
  String toString() {
    return 'ComputationEvent.startPrimeCheck()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartPrimeCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFactorial,
    required TResult Function() startPrimeCheck,
    required TResult Function() startFibonacci,
  }) {
    return startPrimeCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFactorial,
    TResult? Function()? startPrimeCheck,
    TResult? Function()? startFibonacci,
  }) {
    return startPrimeCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFactorial,
    TResult Function()? startPrimeCheck,
    TResult Function()? startFibonacci,
    required TResult orElse(),
  }) {
    if (startPrimeCheck != null) {
      return startPrimeCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartFactorial value) startFactorial,
    required TResult Function(StartPrimeCheck value) startPrimeCheck,
    required TResult Function(StartFibonacci value) startFibonacci,
  }) {
    return startPrimeCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartFactorial value)? startFactorial,
    TResult? Function(StartPrimeCheck value)? startPrimeCheck,
    TResult? Function(StartFibonacci value)? startFibonacci,
  }) {
    return startPrimeCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartFactorial value)? startFactorial,
    TResult Function(StartPrimeCheck value)? startPrimeCheck,
    TResult Function(StartFibonacci value)? startFibonacci,
    required TResult orElse(),
  }) {
    if (startPrimeCheck != null) {
      return startPrimeCheck(this);
    }
    return orElse();
  }
}

abstract class StartPrimeCheck implements ComputationEvent {
  const factory StartPrimeCheck() = _$StartPrimeCheckImpl;
}

/// @nodoc
abstract class _$$StartFibonacciImplCopyWith<$Res> {
  factory _$$StartFibonacciImplCopyWith(_$StartFibonacciImpl value,
          $Res Function(_$StartFibonacciImpl) then) =
      __$$StartFibonacciImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartFibonacciImplCopyWithImpl<$Res>
    extends _$ComputationEventCopyWithImpl<$Res, _$StartFibonacciImpl>
    implements _$$StartFibonacciImplCopyWith<$Res> {
  __$$StartFibonacciImplCopyWithImpl(
      _$StartFibonacciImpl _value, $Res Function(_$StartFibonacciImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComputationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartFibonacciImpl implements StartFibonacci {
  const _$StartFibonacciImpl();

  @override
  String toString() {
    return 'ComputationEvent.startFibonacci()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartFibonacciImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startFactorial,
    required TResult Function() startPrimeCheck,
    required TResult Function() startFibonacci,
  }) {
    return startFibonacci();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startFactorial,
    TResult? Function()? startPrimeCheck,
    TResult? Function()? startFibonacci,
  }) {
    return startFibonacci?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startFactorial,
    TResult Function()? startPrimeCheck,
    TResult Function()? startFibonacci,
    required TResult orElse(),
  }) {
    if (startFibonacci != null) {
      return startFibonacci();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartFactorial value) startFactorial,
    required TResult Function(StartPrimeCheck value) startPrimeCheck,
    required TResult Function(StartFibonacci value) startFibonacci,
  }) {
    return startFibonacci(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartFactorial value)? startFactorial,
    TResult? Function(StartPrimeCheck value)? startPrimeCheck,
    TResult? Function(StartFibonacci value)? startFibonacci,
  }) {
    return startFibonacci?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartFactorial value)? startFactorial,
    TResult Function(StartPrimeCheck value)? startPrimeCheck,
    TResult Function(StartFibonacci value)? startFibonacci,
    required TResult orElse(),
  }) {
    if (startFibonacci != null) {
      return startFibonacci(this);
    }
    return orElse();
  }
}

abstract class StartFibonacci implements ComputationEvent {
  const factory StartFibonacci() = _$StartFibonacciImpl;
}
