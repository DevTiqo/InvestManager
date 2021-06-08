import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trackvest/home.dart';
import 'package:trackvest/loginPage.dart';
import 'package:trackvest/onboarding.dart';
import 'package:trackvest/profile.dart';
import 'package:trackvest/register.dart';
import 'package:trackvest/theme/palette.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeNotifier(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Trackvest",
        home: Register(),
        theme: Provider.of<ThemeNotifier>(context).darkTheme ? dark : light,
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/home": (BuildContext context) => new Home(),
          "/profile": (BuildContext context) => new Profile(),
          "/account": (BuildContext context) => new Register(),
        });
  }
}
