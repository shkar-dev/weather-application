import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/provider/weather.dart';
import 'package:weather/searchScreen.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => WeatherProvider()),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: SearchScreen(),
      ),
    );
  }
}
