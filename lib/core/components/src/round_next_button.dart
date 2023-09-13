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

import 'package:alkyne/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class RoundNextButton extends StatelessWidget {
  const RoundNextButton({this.scale = 1, this.onPressed, super.key});
  final double scale;
  final Function? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed != null ? () => onPressed!() : () {},
      child: Transform.scale(
        scale: this.scale,
        child: CircleAvatar(
          radius: 32.5,
          backgroundImage: Assets.gradients.buttonGradient.provider(),
          child: Icon(Icons.chevron_right, color: Colors.white, size: 40),
        ),
      ),
    );
  }
}
