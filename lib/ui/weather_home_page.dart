import 'package:flutter/material.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/repository/weather_repository.dart';
import 'package:weather_app_2/ui/weather_item_page0.dart';
import 'package:weather_app_2/ui/weather_item_page1.dart';
import 'package:weather_app_2/ui/weather_item_page2.dart';
import 'package:weather_app_2/ui/weather_item_page3.dart';
import 'package:weather_app_2/ui/weather_item_page4.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  WeatherRepository repository = WeatherRepository();
  CurrentWeatherModel? currentWeatherModel;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var weatherModel = await repository.getCurrentWeather('Osh');
    setState(() {
      currentWeatherModel = weatherModel;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/graphic.png'),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 600,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeatherItemPage0(),
                  WeatherItemPage1(),
                  WeatherItemPage2(),
                  WeatherItemPage3(),
                  WeatherItemPage4(),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget item(String img, String value, String title) {
    return Column(children: [Text('data')]);
  }
}
