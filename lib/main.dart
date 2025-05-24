import 'package:flutter/material.dart';
import 'package:somethingcool/base/pages/home/home.dart';
import 'package:somethingcool/base/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      theme: ThemeData(
        fontFamily: 'SFUIText',

      ),
      onGenerateRoute: (RouteSettings settings) => roFuteSettings(settings),

      debugShowCheckedModeBanner: false,
      // localizationsDelegates: const<LocalizationsDelegate<dynamic>>[
      //   GlobalM
      // ],
    );
  }
}

MaterialPageRoute<dynamic> routeSettings(RouteSettings settings) {
  final Map<String, dynamic> data =
      settings.arguments as Map<String, dynamic>? ?? {};
  switch (settings.name) {
    case RoutesName.home:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => MyHomePage(
          title: 'Sad',
        ),
        settings: const RouteSettings(name: RoutesName.home),
      );
    default:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => MyHomePage(title: 'Sad',),
        settings: const RouteSettings(name: 'home'),
      );
  }
}


