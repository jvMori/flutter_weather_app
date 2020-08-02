import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweatherapp/common/const.dart';
import 'package:flutterweatherapp/weather/domain/WeatherEntity.dart';
import 'package:intl/intl.dart';

class WeatherContainer extends StatelessWidget {
  final WeatherEntity weatherEntity;

  const WeatherContainer({Key key, this.weatherEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultMidPadding),
      child: Column(
        children: <Widget>[
          _cityInfo(context),
          _currentDateInfo(context),
          _mainWeather(weatherEntity, context),
        ],
      ),
    );
  }

  Container _currentDateInfo(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: kDefaultPadding / 4),
        child: Text(
          _getCurrentDate(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }

  Container _cityInfo(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        weatherEntity.cityName,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  Widget _mainWeather(WeatherEntity weatherEntity, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding / 2, vertical: kDefaultPadding * 2),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("Today",
            style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 18),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/4, vertical: kDefaultPadding/2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    "assets/images/sun.png",
                    height: 60,
                    width: 60,
                  ),
                  Text("${weatherEntity.temp.toInt()} °C"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String _getCurrentDate() {
    var date = DateTime.now();
    return DateFormat("EEEE MMMM d y").format(date);
  }
}
