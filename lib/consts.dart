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
import 'package:flutter/material.dart';

import 'core/gen/fonts.gen.dart';

// Colors
Color kGreenColor = const Color(0xFF58FF7D);
Color kBlueColor = const Color(0xFF577CFF);
Color kRedColor = const Color(0xFFFF0057);
Color kYellorColor = const Color(0xFFFFBB00);
Color kVioletColor = const Color(0xFFA782EF);

Color kGrey1 = const Color(0xFF232752);
Color kGrey2 = const Color(0xFF2a2f58);
Color kGrey3 = const Color(0xFF494c78);

// Text Styles
const TextStyle karlaTextStyle = TextStyle(
  fontFamily: FontFamily.karla,
  color: Colors.white,
);

const TextStyle IBMPlexMonoTextStyle = TextStyle(
  fontFamily: FontFamily.iBMPlexMono,
  color: Colors.white,
);

// Gradient Shaders
final LinearGradient kGreenBlueGradientLeftRight = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    kGreenColor,
    kBlueColor,
  ],
);

final LinearGradient kGreenBlueGradientTopBottom = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kGreenColor,
    kBlueColor,
  ],
);

final LinearGradient kGreenBlueGradientDiagonalLeftRight = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    kGreenColor,
    kBlueColor,
  ],
);

final LinearGradient kGreenBlueGradientDiagonalRightLeft = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    kGreenColor,
    kBlueColor,
  ],
);
