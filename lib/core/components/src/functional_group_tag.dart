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
import 'package:alkyne/core/models/functional_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FunctionalGroupTag extends StatelessWidget {
  const FunctionalGroupTag(
      {super.key, required this.functionalGroup, this.color});
  final FunctionalGroup functionalGroup;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? kVioletColor,
          borderRadius: BorderRadius.all(Radius.circular(2000))),
      padding: EdgeInsets.symmetric(horizontal: 7.5, vertical: 2),
      child: Text(
        functionalGroup.name,
        style: IBMPlexMonoTextStyle.copyWith(
            fontWeight: FontWeight.w700, fontSize: 10),
      ),
    );
  }
}
