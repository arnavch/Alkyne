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
import 'package:alkyne/core/components/src/functional_group_tag.dart';
import 'package:alkyne/core/components/src/reaction_card.dart';
import 'package:alkyne/core/models/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ConversionOutputPage extends StatefulWidget {
  const ConversionOutputPage({super.key, required this.resultInput});
  final ConversionResult resultInput;
  @override
  State<ConversionOutputPage> createState() => _ConversionOutputPageState();
}

class _ConversionOutputPageState extends State<ConversionOutputPage> {
  Map<int, bool> opened = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "From",
                          style: karlaTextStyle.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        FunctionalGroupTag(
                            functionalGroup: widget.resultInput.from),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "To",
                          style: karlaTextStyle.copyWith(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        FunctionalGroupTag(
                            functionalGroup: widget.resultInput.to),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: kYellorColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  """The steps below show how to convert the initial functional group to the final functional group.

It doesn't consider compound specific factors yet such as number of carbons and other exceptions.""",
                  style: karlaTextStyle.copyWith(
                      color: kYellorColor, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Steps",
                      style: karlaTextStyle.copyWith(
                          fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: kBlueColor,
                      child: Text(
                        widget.resultInput.steps.length > 9
                            ? '9+'
                            : widget.resultInput.steps.length.toString(),
                        style: karlaTextStyle.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.resultInput.steps.length,
                  itemBuilder: (context, index) {
                    opened.putIfAbsent(index, () => false);
                    return ReactionCard(
                      reaction: widget.resultInput.steps[index],
                      onToggle: () {
                        setState(() {
                          opened[index] = !opened[index]!;
                        });
                      },
                      opened: opened[index]!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
