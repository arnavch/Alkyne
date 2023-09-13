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

import 'package:alkyne/Notifiers/connect_notifier.dart';
import 'package:alkyne/consts.dart';
import 'package:alkyne/features/home/conversions/conversions.dart';
import 'package:alkyne/features/home/reactions/reactions.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

enum Pages { conversions, reactions }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Pages _currentPage = Pages.conversions;
  Widget getPage(page) {
    switch (page) {
      case Pages.conversions:
        return ConversionsPage();
      case Pages.reactions:
        return Reactions();
      default:
        return Placeholder();
    }
  }

  // Future<void> test(database) async {
  //   print(await database.pathFinder('A', 'B'));
  // }

  @override
  Widget build(BuildContext context) {
    Database database=context.read<Database>();

    // print(database.getAllGroups);

    return Scaffold(
      backgroundColor: kGrey1,
      body: SafeArea(child: getPage(_currentPage)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GNav(
          onTabChange: (value) =>
              setState(() => _currentPage = Pages.values[value]),
          tabs: [
            GButton(
              backgroundColor: kBlueColor.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              icon: Icons.home_rounded,
              // text: 'Conversions',
              textStyle: karlaTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color:
                      _currentPage == Pages.conversions ? kBlueColor : kGrey3),
              active: _currentPage == Pages.conversions,
              iconColor: kGrey3,
              iconActiveColor: kBlueColor,
            ),
            GButton(
              backgroundColor: kGreenColor.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              icon: Icons.code_rounded,
              // text: 'Conversions',
              textStyle: karlaTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color:
                      _currentPage == Pages.reactions ? kGreenColor : kGrey3),
              active: _currentPage == Pages.reactions,
              iconColor: kGrey3,
              iconActiveColor: kGreenColor,
            ),
          ],
        ),
      ),
    );
  }
}

/*

GNav(
        tabs: [
          GButton(
            icon: Icons.home_rounded,
            text: 'Conversions',
            active: _currentPage == Pages.conversions,
          ),
        ],
      ),
*/