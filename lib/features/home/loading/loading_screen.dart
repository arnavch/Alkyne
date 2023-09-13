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
import 'package:alkyne/core/gen/assets.gen.dart';
import 'package:alkyne/core/models/functional_group.dart';
import 'package:alkyne/core/models/reaction.dart';
import 'package:alkyne/core/models/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../Notifiers/connect_notifier.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.initial, required this.end, required this.database});
  final FunctionalGroup initial;
  final FunctionalGroup end;
  final Database database;
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    final ConversionResult result = ConversionResult(
        from: widget.initial,
        to: widget.end,
        steps: [
          const Reaction(
              name: "Etard's Reaction",
              from: FunctionalGroup(
                  id: "0x1", name: "ALKENE", description: "double bond"),
              to: FunctionalGroup(
                  id: "0x2", name: "ALCOHOL", description: "johnny walker"),
              description:
                  "Nucleophilic substitution reactions are a class of reactions in which an electron rich nucleophile attacks a positively charged electrophile to replace a leaving group.",
              exampleLatex: "",
              id: "rxn_2",
              cost: 5,
          )
        ],
        time: 5.3,
        algorithm: Algorithms.dijkstra);

    widget.database.pathFinder(widget.initial.name, widget.end.name).then((cache) {
      print(cache);
      List<Map<String, String>> reactions=cache[widget.end.name]!;
      return widget.database.getAllReactionsFromNames(
        reactions,
      );
    }).then((reactions) {
      final ConversionResult conversionResult=ConversionResult(from: widget.initial, to: widget.end, steps: reactions, time: 1.55, algorithm: Algorithms.dijkstra);
      Navigator.pushNamed(context, '/result', arguments: conversionResult);
    });


    // Future.delayed(const Duration(seconds: 5), () {
    //   //TODO:  change `5` to `1` when testing algo
    //   Navigator.pushNamed(context, '/result', arguments: result);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey1,
      body: SafeArea(
        child: Center(
          child: Assets.animations.loadingAnimation.lottie(
            repeat: true,
            reverse: true,
            animate: true,
          ),
        ),
      ),
    );
  }
}
