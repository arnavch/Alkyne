// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'functional_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FunctionalGroup _$FunctionalGroupFromJson(Map<String, dynamic> json) {
  return _FunctionalGroup.fromJson(json);
}

/// @nodoc
mixin _$FunctionalGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FunctionalGroupCopyWith<FunctionalGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionalGroupCopyWith<$Res> {
  factory $FunctionalGroupCopyWith(
          FunctionalGroup value, $Res Function(FunctionalGroup) then) =
      _$FunctionalGroupCopyWithImpl<$Res, FunctionalGroup>;
  @useResult
  $Res call({String id, String name, String description});
}

/// @nodoc
class _$FunctionalGroupCopyWithImpl<$Res, $Val extends FunctionalGroup>
    implements $FunctionalGroupCopyWith<$Res> {
  _$FunctionalGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FunctionalGroupCopyWith<$Res>
    implements $FunctionalGroupCopyWith<$Res> {
  factory _$$_FunctionalGroupCopyWith(
          _$_FunctionalGroup value, $Res Function(_$_FunctionalGroup) then) =
      __$$_FunctionalGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String description});
}

/// @nodoc
class __$$_FunctionalGroupCopyWithImpl<$Res>
    extends _$FunctionalGroupCopyWithImpl<$Res, _$_FunctionalGroup>
    implements _$$_FunctionalGroupCopyWith<$Res> {
  __$$_FunctionalGroupCopyWithImpl(
      _$_FunctionalGroup _value, $Res Function(_$_FunctionalGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_FunctionalGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FunctionalGroup
    with DiagnosticableTreeMixin
    implements _FunctionalGroup {
  const _$_FunctionalGroup(
      {required this.id, required this.name, required this.description});

  factory _$_FunctionalGroup.fromJson(Map<String, dynamic> json) =>
      _$$_FunctionalGroupFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FunctionalGroup(id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FunctionalGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FunctionalGroup &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FunctionalGroupCopyWith<_$_FunctionalGroup> get copyWith =>
      __$$_FunctionalGroupCopyWithImpl<_$_FunctionalGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FunctionalGroupToJson(
      this,
    );
  }
}

abstract class _FunctionalGroup implements FunctionalGroup {
  const factory _FunctionalGroup(
      {required final String id,
      required final String name,
      required final String description}) = _$_FunctionalGroup;

  factory _FunctionalGroup.fromJson(Map<String, dynamic> json) =
      _$_FunctionalGroup.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_FunctionalGroupCopyWith<_$_FunctionalGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
