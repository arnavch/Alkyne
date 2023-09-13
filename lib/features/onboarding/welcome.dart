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
import 'package:alkyne/core/components/components.dart';
import 'package:alkyne/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrey1,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Assets.illustrations.undrawWelcome4x.image(scale: 4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to ",
                    style: karlaTextStyle.copyWith(
                        fontSize: 32, fontWeight: FontWeight.w700)),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return kGreenBlueGradientLeftRight
                        .createShader(Offset.zero & bounds.size);
                  },
                  child: Text(
                    "Alkyne",
                    style: karlaTextStyle.copyWith(
                        fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              "master your organic chemistry conversions",
              textAlign: TextAlign.center,
              style: karlaTextStyle.copyWith(fontSize: 24),
            ),
            SizedBox(height: 30),
            RoundNextButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
