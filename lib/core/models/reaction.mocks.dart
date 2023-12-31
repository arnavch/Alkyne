// Mocks generated by Mockito 5.3.2 from annotations
// in alkyne/core/models/reaction.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alkyne/core/models/functional_group.dart' as _i2;
import 'package:alkyne/core/models/reaction.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFunctionalGroup_0 extends _i1.SmartFake
    implements _i2.FunctionalGroup {
  _FakeFunctionalGroup_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$ReactionCopyWith_1<$Res> extends _i1.SmartFake
    implements _i3.$ReactionCopyWith<$Res> {
  _Fake$ReactionCopyWith_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Reaction].
///
/// See the documentation for Mockito's code generation for more information.
class MockReaction extends _i1.Mock implements _i3.Reaction {
  @override
  String get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i2.FunctionalGroup get from => (super.noSuchMethod(
        Invocation.getter(#from),
        returnValue: _FakeFunctionalGroup_0(
          this,
          Invocation.getter(#from),
        ),
        returnValueForMissingStub: _FakeFunctionalGroup_0(
          this,
          Invocation.getter(#from),
        ),
      ) as _i2.FunctionalGroup);
  @override
  _i2.FunctionalGroup get to => (super.noSuchMethod(
        Invocation.getter(#to),
        returnValue: _FakeFunctionalGroup_0(
          this,
          Invocation.getter(#to),
        ),
        returnValueForMissingStub: _FakeFunctionalGroup_0(
          this,
          Invocation.getter(#to),
        ),
      ) as _i2.FunctionalGroup);
  @override
  String get description => (super.noSuchMethod(
        Invocation.getter(#description),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get exampleLatex => (super.noSuchMethod(
        Invocation.getter(#exampleLatex),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  double get cost => (super.noSuchMethod(
        Invocation.getter(#cost),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);
  @override
  _i3.$ReactionCopyWith<_i3.Reaction> get copyWith => (super.noSuchMethod(
        Invocation.getter(#copyWith),
        returnValue: _Fake$ReactionCopyWith_1<_i3.Reaction>(
          this,
          Invocation.getter(#copyWith),
        ),
        returnValueForMissingStub: _Fake$ReactionCopyWith_1<_i3.Reaction>(
          this,
          Invocation.getter(#copyWith),
        ),
      ) as _i3.$ReactionCopyWith<_i3.Reaction>);
  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);
}
