// Copyright (C) 2023 Krishaay Jois
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:alkyne/core/models/functional_group.dart';
import 'package:alkyne/core/models/reaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

enum Algorithms {
  @JsonValue('dijkstra')
  dijkstra,
  @JsonValue('aStar')
  aStar,
  @JsonValue('bfs')
  bfs,
  @JsonValue('dfs')
  dfs
}

@freezed
class ConversionResult with _$ConversionResult {
  const factory ConversionResult({
    required FunctionalGroup from,
    required FunctionalGroup to,
    required List<Reaction> steps,
    required double time,
    required Algorithms algorithm,
  }) = _ConversionResult;

  factory ConversionResult.fromJson(Map<String, Object?> json) =>
      _$ConversionResultFromJson(json);
}
