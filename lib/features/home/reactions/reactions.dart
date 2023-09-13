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

import 'package:alkyne/consts.dart';
import 'package:alkyne/core/components/src/reaction_card.dart';
import 'package:alkyne/core/models/functional_group.dart';
import 'package:alkyne/core/models/reaction.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Reactions extends StatefulWidget {
  const Reactions({super.key});

  @override
  State<Reactions> createState() => _ReactionsState();
}

class _ReactionsState extends State<Reactions> {
  TextEditingController _searchController = TextEditingController();
  Map<String, bool> reactionCardStateMap = {};
  final List<Reaction> sampleReactions = [
    const Reaction(
        name: "Free Radical Halogenation",
        from: FunctionalGroup(
            id: "0x1", name: "ALKENE", description: "double bond"),
        to: FunctionalGroup(
            id: "0x2", name: "ALCOHOL", description: "johnny walker"),
        description:
            "Nucleophilic substitution reactions are a class of reactions in which an electron rich nucleophile attacks a positively charged electrophile to replace a leaving group.",
        exampleLatex: "",
        id: "rxn_1",
        cost: 5),
    Reaction(
        name: "Etard's Reaction",
        from: FunctionalGroup(
            id: "0x1", name: "ALKENE", description: "double bond"),
        to: FunctionalGroup(
            id: "0x2", name: "ALCOHOL", description: "johnny walker"),
        description:
            "Nucleophilic substitution reactions are a class of reactions in which an electron rich nucleophile attacks a positively charged electrophile to replace a leaving group.",
        exampleLatex: "",
        id: "rxn_2",
        cost: 5)
  ];
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Reactions",
                  style: karlaTextStyle.copyWith(
                      fontSize: 32, fontWeight: FontWeight.w900),
                ),
              ],
            ),

            //* Tool Bar
            Row(
              children: [
                //TODO: reaplace this bar later
                AnimSearchBar(
                  color: kGrey2,
                  searchIconColor: kBlueColor,
                  textFieldColor: kGrey2,
                  textFieldIconColor: kBlueColor,
                  helpText: "Search",
                  style: karlaTextStyle.copyWith(fontWeight: FontWeight.w700),
                  onSubmitted: (prompt) {
                    print("Search $prompt");
                  },
                  prefixIcon: null,
                  textController: _searchController,
                  width: 300,
                  suffixIcon: null,
                  closeSearchOnSuffixTap: false,
                  onSuffixTap: () {
                    print("Suffix Tapped");
                  },
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 22.5,
                  backgroundColor: kGrey2,
                  child: Icon(Icons.filter_list, color: kBlueColor),
                ),
              ],
            ),

            ListView.builder(
                shrinkWrap: true,
                itemCount: sampleReactions.length,
                itemBuilder: (context, index) {
                  if (!reactionCardStateMap
                      .containsKey(sampleReactions[index].id))
                    reactionCardStateMap[sampleReactions[index].id] = false;
                  return ReactionCard(
                    onToggle: () {
                      bool state =
                          reactionCardStateMap[sampleReactions[index].id] ??
                              false;
                      if (!state) {
                        // make all values other than the `sampleReactions[index].id` key false
                        setState(() {
                          reactionCardStateMap.forEach((key, value) {
                            if (key != sampleReactions[index].id) {
                              reactionCardStateMap[key] = false;
                            } else {
                              reactionCardStateMap[key] = true;
                            }
                          });
                        });
                      } else {
                        setState(() {
                          reactionCardStateMap[sampleReactions[index].id] =
                              false;
                        });
                      }
                    },
                    opened: reactionCardStateMap[sampleReactions[index].id] ??
                        false,
                    reaction: sampleReactions[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}
