import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:weather/model/weather.dart';
import 'package:http/http.dart' as http;
import "dart:convert";

class WeatherProvider with ChangeNotifier {
  var isLoaded = false;

  final List<Weather> _weather = [];

  List<Weather> get weather {
    return [..._weather];
  }

  bool get isLoadingFinished {
    notifyListeners();
    return isLoaded;
  }

  Future<void> fetchWeather() async {
    var url =
        'https://api.openweathermap.org/data/2.5/forecast?q=Sulaymaniyah&appid=6e334c094c73578501957ba7abec0130&units=metric';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      isLoaded = true;
    } else {
      isLoaded = false;
    }
    Map<String, dynamic> weathersJson = jsonDecode(response.body);
    List body = weathersJson['list'] as List;

    for (var data in body) {
      Weather weather = Weather.fromJson(
          data, weathersJson['city']['name'], weathersJson['city']['country']);
      _weather.add(weather);
    }
    isLoaded = true;
    notifyListeners();
  }
}
