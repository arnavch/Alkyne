import 'package:alkyne/core/models/functional_group.dart';
import 'package:alkyne/core/models/reaction.dart';
import 'package:alkyne/core/services/hive_service.dart';
import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

class ConnectionNotifier {
  ConnectionNotifier(){}

  final Client _client = Client()
      .setEndpoint('https://cloud.appwrite.io/v1') // Your Appwrite Endpoint
      .setProject('63f8eea10c6e9b0849df');


  get client => _client;

}

class Database {
  Database(this._database){
    allFunctionalGroups = getAllFunctionalGroups();
  }

  final Databases _database;
  final databaseId='640f53df907f10590b69'; // chemical stuff
  final reactionId='640f63c035c29170b2a7';
  final functionalGroupId='640f68fa18961be968f1';
  final cacheId='64141517ede36a70e2ad';

  Future<List<FunctionalGroup>>? allFunctionalGroups;

  Future<List<List>> getAllToFunctionalGroups(String fromFunctionalGroup, int cost) async {
    List<List> fromDatabase= (await database.listDocuments(
    databaseId: databaseId,
    collectionId: reactionId,
    queries: [
    Query.equal('from_group', fromFunctionalGroup)
    ]
    )).documents.map((e) => [cost+e.data['cost'], e.data['to_group'], fromFunctionalGroup, e.data['name']]
    ).toList(); // [cost, to group, from group]

    List<List>? fromLocal=HiveStorageService.hiveReactions()[fromFunctionalGroup]?.map((e) => [cost+e.cost, e.to, fromFunctionalGroup, e.from] as List
    ).toList();

    fromDatabase.addAll(fromLocal ?? []);
    return fromDatabase;
  }

  Future<List<Reaction>> getAllReactions() async {
    return (await database.listDocuments(
        databaseId: databaseId,
        collectionId: reactionId,
    )).documents.map((e) => Reaction(id: e.$id, name: e.data['name'], from: e.data['from_group'], to: e.data['to_group'], description: e.data['description'], exampleLatex: e.data['reaction_latex'], cost: e.data['cost'])
    ).toList(); // [cost, to group, from group]
  }

  Future<Reaction> getReaction({required String name, required String from, required String to}) async {
    return (await database.listDocuments(
      databaseId: databaseId,
      collectionId: reactionId,
        queries: [
          Query.equal('name', name),
          Query.equal('from_group', from),
          Query.equal('to_group', to),
        ]
    )).documents.map((e) => Reaction(id: e.$id, name: e.data['name'], from: FunctionalGroup(id: 'dasfasd', name: e.data['from_group'], description: 'description'), to: FunctionalGroup(id: 'dasfasd', name: e.data['to_group'], description: 'description'), description: e.data['description'], exampleLatex: e.data['reaction_latex'], cost: e.data['cost'].toDouble())
    ).toList()[0]; // [cost, to group, from group]
  }

  Future<List<Reaction>> getAllReactionsFromNames(List<Map<String, String>> names) async {

     Iterable<Future> list=names.map((e) async {
       print(e);
      Reaction reaction =await getReaction(name: e['reaction']!, from: e['from']!, to: e['to']!);
      return reaction;
    });

     List<Reaction> reactions=[];

     for(Future element in list){
       reactions.add(await element);
     }

     Map hiveData={
       '<startFunctionalG>': {
         'start': 'some shit',
         'end': '',
         'example latex': ',',
         'desc': '',
       }
     }; //some data from hive

     return reactions;
  }

  Future<Document> getFunctionalGroup(String functionalGroup) async {

    return await database.getDocument(
        databaseId: databaseId,
        collectionId: functionalGroupId,
        documentId: functionalGroup
    );
  }

  Future<List<FunctionalGroup>> getAllFunctionalGroups() async {
    DocumentList result= await database.listDocuments(
      databaseId: databaseId,
      collectionId: functionalGroupId,
      queries: [
        Query.limit(500),
      ]
    );
    List<FunctionalGroup> endResult=result.documents.map((e) => FunctionalGroup(id: e.$id, name: e.data['name'], description: e.data['description'])).toList(); // [cost, to group, from group]

    endResult.addAll(HiveStorageService.getFunctionalGroups());
    print(endResult);
    return endResult;
  }

  Future<List<FunctionalGroup>> get getAllGroups async {
    return allFunctionalGroups!;
  }

  bool syncCache(String fromGroup, cache){

    return true;
  }


  Future<List<List>> testing(String fromFunctionalGroup, int cost) async {

    Map<String, List> graph={
      'A':[['B', 4], ['C', 6], ['E', 10],],
      'B':[['F', 100], ['A', 4]],
      'C':[['A', 6], ['D', 20]],
      'D':[['E', 1], ['C', 20], ['F', 5]],
      'E':[['A', 10], ['D', 1]],
      'F':[['B', 100], ['D', 5]],
    };

    return graph[fromFunctionalGroup]!.map((e) => [cost+e[1], e[0], fromFunctionalGroup, e[0]+'reaction']).toList();

  }



  Future<Map<String, List<Map<String, String>>>> pathFinder(String startFunctionalGroup, String endFunctionalGroup) async {
    HeapPriorityQueue heap=HeapPriorityQueue((p0, p1) {
      return p0[0]<p1[0]?-1:1;
    },);

    heap.add([0, startFunctionalGroup, startFunctionalGroup, null]);//[cost, group, from]

    Map<String, dynamic> visitedGroupsData={};//[cost, group, from]

    Set visitedGroups={};//group
    Set unvisitedGroups={startFunctionalGroup};

    while(unvisitedGroups.isNotEmpty) {

      List<dynamic> nextNode = heap.removeFirst();

      String functionalGroup=nextNode[1];

      if (visitedGroups.contains(nextNode[1])) {
        continue;
      } else {


        unvisitedGroups.remove(functionalGroup);
        visitedGroups.add(functionalGroup);

        visitedGroupsData[functionalGroup]={
          'name':functionalGroup,
          'cost': nextNode[0],
          'from': nextNode[2],
          'reaction': nextNode[3]
        };


        List<List> nextNodes = await getAllToFunctionalGroups(
            functionalGroup, nextNode[0]);

        for (var node in nextNodes) {
          if (!visitedGroups.contains(node[1])) {
            unvisitedGroups.add(node[1]);
            heap.add(node);
          }
        }
      }
    }

    List<Map<String, String>> backtrack(String toGroup){
      String from=toGroup;
      String? reaction=visitedGroupsData[toGroup]['reaction'];
      List<Map<String, String>> reactions=[];
      while(reaction!=null){
        if(toGroup=='F'){
          // print(visitedGroupsData[from]);
        }
        reactions.add(
          {
            'to': from,
            'reaction': visitedGroupsData[from]['reaction'],
            'from': visitedGroupsData[from]['from'],
          }
        );
        from=visitedGroupsData[from]['from'];
        reaction=visitedGroupsData[from]['reaction'];
      }
      return reactions.reversed.toList();
    }

    Map<String, List<Map<String, String>>> cache={};
    for(String group in visitedGroupsData.keys){
      if(group!=startFunctionalGroup){
        cache[group]=backtrack(group);
      }
    }
    // print(visitedGroupsData);
    return cache;
  }

  Databases get database => _database;
}