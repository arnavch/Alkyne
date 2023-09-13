// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversionResult _$ConversionResultFromJson(Map<String, dynamic> json) {
  return _ConversionResult.fromJson(json);
}

/// @nodoc
mixin _$ConversionResult {
  FunctionalGroup get from => throw _privateConstructorUsedError;
  FunctionalGroup get to => throw _privateConstructorUsedError;
  List<Reaction> get steps => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;
  Algorithms get algorithm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversionResultCopyWith<ConversionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionResultCopyWith<$Res> {
  factory $ConversionResultCopyWith(
          ConversionResult value, $Res Function(ConversionResult) then) =
      _$ConversionResultCopyWithImpl<$Res, ConversionResult>;
  @useResult
  $Res call(
      {FunctionalGroup from,
      FunctionalGroup to,
      List<Reaction> steps,
      double time,
      Algorithms algorithm});

  $FunctionalGroupCopyWith<$Res> get from;
  $FunctionalGroupCopyWith<$Res> get to;
}

/// @nodoc
class _$ConversionResultCopyWithImpl<$Res, $Val extends ConversionResult>
    implements $ConversionResultCopyWith<$Res> {
  _$ConversionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? steps = null,
    Object? time = null,
    Object? algorithm = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Reaction>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as Algorithms,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FunctionalGroupCopyWith<$Res> get from {
    return $FunctionalGroupCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FunctionalGroupCopyWith<$Res> get to {
    return $FunctionalGroupCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConversionResultCopyWith<$Res>
    implements $ConversionResultCopyWith<$Res> {
  factory _$$_ConversionResultCopyWith(
          _$_ConversionResult value, $Res Function(_$_ConversionResult) then) =
      __$$_ConversionResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FunctionalGroup from,
      FunctionalGroup to,
      List<Reaction> steps,
      double time,
      Algorithms algorithm});

  @override
  $FunctionalGroupCopyWith<$Res> get from;
  @override
  $FunctionalGroupCopyWith<$Res> get to;
}

/// @nodoc
class __$$_ConversionResultCopyWithImpl<$Res>
    extends _$ConversionResultCopyWithImpl<$Res, _$_ConversionResult>
    implements _$$_ConversionResultCopyWith<$Res> {
  __$$_ConversionResultCopyWithImpl(
      _$_ConversionResult _value, $Res Function(_$_ConversionResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? steps = null,
    Object? time = null,
    Object? algorithm = null,
  }) {
    return _then(_$_ConversionResult(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Reaction>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      algorithm: null == algorithm
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as Algorithms,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversionResult
    with DiagnosticableTreeMixin
    implements _ConversionResult {
  const _$_ConversionResult(
      {required this.from,
      required this.to,
      required final List<Reaction> steps,
      required this.time,
      required this.algorithm})
      : _steps = steps;

  factory _$_ConversionResult.fromJson(Map<String, dynamic> json) =>
      _$$_ConversionResultFromJson(json);

  @override
  final FunctionalGroup from;
  @override
  final FunctionalGroup to;
  final List<Reaction> _steps;
  @override
  List<Reaction> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final double time;
  @override
  final Algorithms algorithm;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversionResult(from: $from, to: $to, steps: $steps, time: $time, algorithm: $algorithm)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversionResult'))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('steps', steps))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('algorithm', algorithm));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversionResult &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.algorithm, algorithm) ||
                other.algorithm == algorithm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to,
      const DeepCollectionEquality().hash(_steps), time, algorithm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversionResultCopyWith<_$_ConversionResult> get copyWith =>
      __$$_ConversionResultCopyWithImpl<_$_ConversionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversionResultToJson(
      this,
    );
  }
}

abstract class _ConversionResult implements ConversionResult {
  const factory _ConversionResult(
      {required final FunctionalGroup from,
      required final FunctionalGroup to,
      required final List<Reaction> steps,
      required final double time,
      required final Algorithms algorithm}) = _$_ConversionResult;

  factory _ConversionResult.fromJson(Map<String, dynamic> json) =
      _$_ConversionResult.fromJson;

  @override
  FunctionalGroup get from;
  @override
  FunctionalGroup get to;
  @override
  List<Reaction> get steps;
  @override
  double get time;
  @override
  Algorithms get algorithm;
  @override
  @JsonKey(ignore: true)
  _$$_ConversionResultCopyWith<_$_ConversionResult> get copyWith =>
      throw _privateConstructorUsedError;
}
