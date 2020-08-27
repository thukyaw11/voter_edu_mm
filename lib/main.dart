import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'route_generator.dart';
import 'package:voter_education/view/landingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LandingPage(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}
