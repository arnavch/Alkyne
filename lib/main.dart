import 'package:alkyne/core/services/hive_service.dart';
import 'package:alkyne/features/home/homepage.dart';
import 'package:alkyne/features/onboarding/welcome.dart';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Notifiers/connect_notifier.dart';
import 'core/models/functional_group.dart';
import 'core/models/result.dart';
import 'features/home/conversion_output/conversion_output.dart';
import 'features/home/loading/loading_screen.dart';

void main() async {
  await HiveStorageService.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConnectionNotifier notifier = ConnectionNotifier();

    return MultiProvider(
      providers: [
        Provider<ConnectionNotifier>.value(value: notifier),
        Provider<Database>(create: (_) => Database(Databases(notifier.client)))
      ],
      child: MaterialApp(
        initialRoute: '/',
        // add named routes
        routes: {
          '/': (context) => const HomePage(),
          '/loading': (context) => LoadingScreen(
                initial: (ModalRoute.of(context)!.settings.arguments
                    as List<FunctionalGroup>)[0],
                end: (ModalRoute.of(context)!.settings.arguments
                    as List<FunctionalGroup>)[1],
                database: context.read<Database>(),
              ),
          '/result': (context) => ConversionOutputPage(
              resultInput: ModalRoute.of(context)!.settings.arguments
                  as ConversionResult),
        },
        debugShowCheckedModeBanner: false,
        title: 'Alkyne',
        theme: ThemeData(useMaterial3: true),
      ),
    );
  }
}
