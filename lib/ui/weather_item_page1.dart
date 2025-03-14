import 'package:flutter/material.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/repository/weather_repository.dart';

class WeatherItemPage1 extends StatefulWidget {
  const WeatherItemPage1({super.key});

  @override
  State<WeatherItemPage1> createState() => _WeatherItemPage1State();
}

class _WeatherItemPage1State extends State<WeatherItemPage1> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 61,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Image.asset('${currentWeatherModel?.weather?.single?.icon ?? '-'}'),
              Text(
                '${currentWeatherModel?.weather?.single?.main?? '-'}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Barlow',
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 87,
          width: 80,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Text(
                '${currentWeatherModel?.main?.temp ?? '-'}℃',
                style: TextStyle(fontSize: 55, fontFamily: 'Barlow'),
              ),
              
            ],
          ),
        ),
        Container(
          height: 61,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    '${currentWeatherModel?.main?.tempMax?? '-'}℃↑',
                    style: TextStyle(fontSize: 15, fontFamily: 'Barlow'),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '${currentWeatherModel?.main?.tempMin?? '-'}℃↓',
                    style: TextStyle(fontSize: 15, fontFamily: 'Barlow'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
