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
import 'package:alkyne/core/components/src/functional_group_tag.dart';
import 'package:alkyne/core/components/src/round_next_button.dart';
import 'package:alkyne/core/models/functional_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:provider/provider.dart';

class ConversionsPage extends StatefulWidget {
  const ConversionsPage({super.key});

  @override
  State<ConversionsPage> createState() => _ConversionsPageState();
}

class _ConversionsPageState extends State<ConversionsPage> {
  FunctionalGroup? initialFunctionalGroup;
  FunctionalGroup? finalFunctionGroup;

  final List<FunctionalGroup> sampleGroups = [
    const FunctionalGroup(
        name: 'alcohol',
        description: "Alkanes are saturated hydrocarbons",
        id: "alkane"),
    const FunctionalGroup(
        name: 'alkene',
        description: "Alkenes are unsaturated hydrocarbons",
        id: "alkene"),
    const FunctionalGroup(
        name: 'Alkyne',
        description: "Alkynes are unsaturated hydrocarbons",
        id: "alkyne")
  ];

  // void test(Future val) async{
  //   print('here');
  //   print(await val);
  // }

  @override
  Widget build(BuildContext context) {

    Database database=context.read<Database>();
    // test(database.getFunctionalGroup('alkene'));

    return Column(
      children: [
        // initial group
        // Text(
        //   "From",
        //   style: karlaTextStyle.copyWith(
        //       fontSize: 24, fontWeight: FontWeight.w700),
        // ),
        // DropdownSearch<FunctionalGroup>(
        //   filterFn: (item, filter) => item.name.contains(filter),
        //   onChanged: (value) => initialFunctionalGroup = value,
        //   dropdownBuilder: (context, selectedItem) {
        //     if (selectedItem != null)
        //       return FunctionalGroupTag(functionalGroup: selectedItem);
        //     else
        //       return SizedBox.shrink();
        //   },
        //   items: sampleGroups,
        //   itemAsString: (item) => item.name,
        // ),
        // Text(
        //   "To",
        //   style: karlaTextStyle.copyWith(
        //       fontSize: 24, fontWeight: FontWeight.w700),
        // ),
        // DropdownSearch<FunctionalGroup>(
        //   filterFn: (item, filter) => item.name.contains(filter),
        //   onChanged: (value) => finalFunctionGroup = value,
        //   dropdownBuilder: (context, selectedItem) {
        //     if (selectedItem != null)
        //       return FunctionalGroupTag(functionalGroup: selectedItem);
        //     else
        //       return SizedBox.shrink();
        //   },
        //   items: sampleGroups,
        //   itemAsString: (item) => item.name,
        // ),
        FutureBuilder(
        future: database.getAllGroups,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasError){
              return const Text('Error in connection has occured', style: TextStyle(color: Colors.white),);
            }
            return Column(
              children: [
                Text(
                  "From",
                  style: karlaTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
                DropdownSearch<FunctionalGroup>(
                  filterFn: (item, filter) => item.name.contains(filter),
                  onChanged: (value) => initialFunctionalGroup = value,
                  dropdownBuilder: (context, selectedItem) {
                    if (selectedItem != null)
                      return FunctionalGroupTag(functionalGroup: selectedItem);
                    else
                      return SizedBox.shrink();
                  },
                  items: snapshot.data,
                  itemAsString: (item) => item.name,
                ),
                Text(
                  "To",
                  style: karlaTextStyle.copyWith(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
                DropdownSearch<FunctionalGroup>(
                  filterFn: (item, filter) => item.name.contains(filter),
                  onChanged: (value) => finalFunctionGroup = value,
                  dropdownBuilder: (context, selectedItem) {
                    if (selectedItem != null)
                      return FunctionalGroupTag(functionalGroup: selectedItem);
                    else
                      return SizedBox.shrink();
                  },
                  items: snapshot.data,
                  itemAsString: (item) => item.name,
                ),
              ],
            );
          }else{
            return Center(child: CircularProgressIndicator());
          }
        },
        ),

        RoundNextButton(
          scale: 1,
          onPressed: () {
            if (initialFunctionalGroup == null || finalFunctionGroup == null)
              return;
            List<FunctionalGroup> args = [
              initialFunctionalGroup!,
              finalFunctionGroup!
            ];

            Navigator.pushNamed(context, "/loading", arguments: args);
          },
        )
      ],
    );
  }
}
