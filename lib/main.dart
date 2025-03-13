import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/ui/weather_home_page.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherHomePage(),
    );
  }

  getWeather(cityName) async {
    var response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=${cityName}&appid=3bf0e75c85dc9da39e7eb5c655825988&units=metric',
      ),
    );
    if (response.statusCode == 200) {
      var weather = CurrentWeatherModel.fromJson(json.decode(response.body));
      weather.main?.humidity ?? '0';
    }
  }
}
