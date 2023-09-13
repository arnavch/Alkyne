// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversionResult _$$_ConversionResultFromJson(Map<String, dynamic> json) =>
    _$_ConversionResult(
      from: FunctionalGroup.fromJson(json['from'] as Map<String, dynamic>),
      to: FunctionalGroup.fromJson(json['to'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => Reaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: (json['time'] as num).toDouble(),
      algorithm: $enumDecode(_$AlgorithmsEnumMap, json['algorithm']),
    );

Map<String, dynamic> _$$_ConversionResultToJson(_$_ConversionResult instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'steps': instance.steps,
      'time': instance.time,
      'algorithm': _$AlgorithmsEnumMap[instance.algorithm]!,
    };

const _$AlgorithmsEnumMap = {
  Algorithms.dijkstra: 'dijkstra',
  Algorithms.aStar: 'aStar',
  Algorithms.bfs: 'bfs',
  Algorithms.dfs: 'dfs',
};
