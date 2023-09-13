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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:mockito/annotations.dart';
import 'package:hive/hive.dart';

@GenerateNiceMocks([MockSpec<FunctionalGroup>()])

part 'functional_group.freezed.dart';
part 'functional_group.g.dart';

@freezed
@HiveType(typeId: 1) // never change typeID
class FunctionalGroup with _$FunctionalGroup {
  const factory FunctionalGroup({
    required String id,
    required String name,
    required String description,
  }) = _FunctionalGroup;

  factory FunctionalGroup.fromJson(Map<String, Object?> json) =>
      _$FunctionalGroupFromJson(json);
}
