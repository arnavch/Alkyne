// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reaction _$$_ReactionFromJson(Map<String, dynamic> json) => _$_Reaction(
      id: json['id'] as String,
      name: json['name'] as String,
      from: FunctionalGroup.fromJson(json['from'] as Map<String, dynamic>),
      to: FunctionalGroup.fromJson(json['to'] as Map<String, dynamic>),
      description: json['description'] as String,
      exampleLatex: json['exampleLatex'] as String,
      cost: (json['cost'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ReactionToJson(_$_Reaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'from': instance.from,
      'to': instance.to,
      'description': instance.description,
      'exampleLatex': instance.exampleLatex,
      'cost': instance.cost,
    };
