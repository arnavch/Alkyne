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

import 'package:accordion/accordion.dart';
import 'package:alkyne/consts.dart';
import 'package:alkyne/core/components/src/functional_group_tag.dart';
import 'package:alkyne/core/models/reaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icons_animate/icons_animate.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReactionCard extends StatefulWidget {
  const ReactionCard(
      {super.key,
      required this.reaction,
      this.borderColor,
      required this.onToggle,
      required this.opened});
  final Reaction reaction;
  final Color? borderColor;
  final bool opened;
  final Function onToggle;
  @override
  State<ReactionCard> createState() => _ReactionCardState();
}

class _ReactionCardState extends State<ReactionCard> {
  late AnimateIconController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimateIconController();
  }

  @override
  void dispose() {
    controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hello");
        widget.onToggle();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.fastOutSlowIn,
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: kGrey2,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
                width: 3,
                color: widget.borderColor ??
                    (widget.opened ? kGreenColor : kBlueColor))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  widget.reaction.name,
                  style: karlaTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                FunctionalGroupTag(functionalGroup: widget.reaction.from),
                SizedBox(
                  width: 1.5,
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 1.5,
                ),
                FunctionalGroupTag(functionalGroup: widget.reaction.to),
              ],
            ),
            if (widget.opened)
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  widget.reaction.description,
                  style: karlaTextStyle.copyWith(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.w700),
                ),
              ),
            if (widget.opened) Text(widget.reaction.exampleLatex),
          ],
        ),
      ),
    );
  }
}
