// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reaction _$ReactionFromJson(Map<String, dynamic> json) {
  return _Reaction.fromJson(json);
}

/// @nodoc
mixin _$Reaction {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  FunctionalGroup get from => throw _privateConstructorUsedError;
  FunctionalGroup get to => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get exampleLatex => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactionCopyWith<Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionCopyWith<$Res> {
  factory $ReactionCopyWith(Reaction value, $Res Function(Reaction) then) =
      _$ReactionCopyWithImpl<$Res, Reaction>;
  @useResult
  $Res call(
      {String id,
      String name,
      FunctionalGroup from,
      FunctionalGroup to,
      String description,
      String exampleLatex,
      double cost});

  $FunctionalGroupCopyWith<$Res> get from;
  $FunctionalGroupCopyWith<$Res> get to;
}

/// @nodoc
class _$ReactionCopyWithImpl<$Res, $Val extends Reaction>
    implements $ReactionCopyWith<$Res> {
  _$ReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? from = null,
    Object? to = null,
    Object? description = null,
    Object? exampleLatex = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      exampleLatex: null == exampleLatex
          ? _value.exampleLatex
          : exampleLatex // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_ReactionCopyWith<$Res> implements $ReactionCopyWith<$Res> {
  factory _$$_ReactionCopyWith(
          _$_Reaction value, $Res Function(_$_Reaction) then) =
      __$$_ReactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      FunctionalGroup from,
      FunctionalGroup to,
      String description,
      String exampleLatex,
      double cost});

  @override
  $FunctionalGroupCopyWith<$Res> get from;
  @override
  $FunctionalGroupCopyWith<$Res> get to;
}

/// @nodoc
class __$$_ReactionCopyWithImpl<$Res>
    extends _$ReactionCopyWithImpl<$Res, _$_Reaction>
    implements _$$_ReactionCopyWith<$Res> {
  __$$_ReactionCopyWithImpl(
      _$_Reaction _value, $Res Function(_$_Reaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? from = null,
    Object? to = null,
    Object? description = null,
    Object? exampleLatex = null,
    Object? cost = null,
  }) {
    return _then(_$_Reaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as FunctionalGroup,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      exampleLatex: null == exampleLatex
          ? _value.exampleLatex
          : exampleLatex // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reaction with DiagnosticableTreeMixin implements _Reaction {
  const _$_Reaction(
      {required this.id,
      required this.name,
      required this.from,
      required this.to,
      required this.description,
      required this.exampleLatex,
      required this.cost});

  factory _$_Reaction.fromJson(Map<String, dynamic> json) =>
      _$$_ReactionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final FunctionalGroup from;
  @override
  final FunctionalGroup to;
  @override
  final String description;
  @override
  final String exampleLatex;
  @override
  final double cost;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reaction(id: $id, name: $name, from: $from, to: $to, description: $description, exampleLatex: $exampleLatex, cost: $cost)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reaction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('exampleLatex', exampleLatex))
      ..add(DiagnosticsProperty('cost', cost));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.exampleLatex, exampleLatex) ||
                other.exampleLatex == exampleLatex) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, from, to, description, exampleLatex, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReactionCopyWith<_$_Reaction> get copyWith =>
      __$$_ReactionCopyWithImpl<_$_Reaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReactionToJson(
      this,
    );
  }
}

abstract class _Reaction implements Reaction {
  const factory _Reaction(
      {required final String id,
      required final String name,
      required final FunctionalGroup from,
      required final FunctionalGroup to,
      required final String description,
      required final String exampleLatex,
      required final double cost}) = _$_Reaction;

  factory _Reaction.fromJson(Map<String, dynamic> json) = _$_Reaction.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  FunctionalGroup get from;
  @override
  FunctionalGroup get to;
  @override
  String get description;
  @override
  String get exampleLatex;
  @override
  double get cost;
  @override
  @JsonKey(ignore: true)
  _$$_ReactionCopyWith<_$_Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}
