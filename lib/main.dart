import 'package:flutter/material.dart';
import 'package:weather_dreams/screens/loading_screen.dart';
import 'package:weather_dreams/screens/location_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Clima App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/location': (context) => LocationScreen(),
      },
    );
  }
}
