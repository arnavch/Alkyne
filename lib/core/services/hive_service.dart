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
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';

class HiveStorageService {
  static const List<String> _storageBoxes = [
    'functional_group',
    'reaction',
  ];
  static late Box _functionalGroupBox;
  static late Box _reactionBox;
  static final _log = Logger('HiveStorageService');

  static Future<void> initialize({wipeBoxes = false}) async {
    _log.info('Initializing');
    _log.info('Clear Boxes: $wipeBoxes');
    try {
      await Hive.initFlutter();
      _functionalGroupBox = await Hive.openBox('functional_group');
      _reactionBox = await Hive.openBox('reaction');
      if (wipeBoxes) {
        _functionalGroupBox.clear();
        _reactionBox.clear();
      }
    } catch (e, st) {
      _log.severe('Failed to initialize', e, st);
    }
  }

  // CREATE/UPDATE

  static void addOrUpdateFunctionalGroup(FunctionalGroup group) async {
    await _functionalGroupBox.put(group.id, group);
  }

  static void addOrUpdateReaction(Reaction reaction) async {
    await _reactionBox.put(reaction.id, reaction);
  }

  // READ
  static List<FunctionalGroup> getFunctionalGroups() {
    return _functionalGroupBox.values.toList().cast<FunctionalGroup>();
  }

  static List<Reaction> getReactions() {
    return _reactionBox.values.toList().cast<Reaction>();
  }

  // DELETE
  static void deleteFunctionalGroup(FunctionalGroup group) async {
    await _functionalGroupBox.delete(group.id);
  }

  static void deleteReaction(Reaction reaction) async {
    await _reactionBox.delete(reaction.id);
  }

  // RETRIEVE
  static FunctionalGroup? getFunctionalGroup(String id) {
    return _functionalGroupBox.get(id) as FunctionalGroup?;
  }

  static Reaction? getReaction(String id) {
    return _reactionBox.get(id) as Reaction?;
  }

  // ARNAV CUSTOM
  static Map<String, FunctionalGroup> hiveFuncGroups() {
    List<FunctionalGroup> funcGroups = getFunctionalGroups();
    Map<String, FunctionalGroup> funcGroupsMap = {};
    for (FunctionalGroup funcGroup in funcGroups) {
      funcGroupsMap[funcGroup.name] = funcGroup;
    }
    return funcGroupsMap;
  }

  static Map<String, List<Reaction>> hiveReactions() {
    List<Reaction> reactions = getReactions();
    Map<String, List<Reaction>> reactionsMap = {};
    reactions.forEach((r) {
      if (reactionsMap.containsKey(r.id))
        reactionsMap[r.id] = [r];
      else
        reactionsMap[r.id]!.add(r);
    });
    return reactionsMap;
  }

  // DELETE
  static void clearAllBoxes() async {
    for (String box in _storageBoxes) {
      await Hive.box(box).clear();
    }
  }

  // CLOSE

  static void close() {
    Hive.close();
  }
}
