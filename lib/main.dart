import 'package:flutter/material.dart';
import 'package:flutterweatherapp/common/const.dart';

import 'weather/presentation/WeatherScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: kTextColor),
          bodyText2: TextStyle(fontSize: 22.0, color: kTextColorSecondary, fontWeight: FontWeight.w300),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundLightColor,
      ),
      body: WeatherScreen(),
      backgroundColor: kBackgroundLightColor,
    );
  }
}
