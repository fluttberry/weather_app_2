import 'package:flutter/material.dart';
import 'package:weather_app_2/model/current_weather_model.dart';

class WeatherItemPage1 extends StatefulWidget {
  const WeatherItemPage1({super.key});

  @override
  State<WeatherItemPage1> createState() => _WeatherItemPage1State();
}

class _WeatherItemPage1State extends State<WeatherItemPage1> {
  @override
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
              Image.asset('assets/icons/013-sunny.png'),
              Text(
                'Sunny',
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
                '${currentWeatherModel?.main?.temp ?? '-'}C',
                style: TextStyle(fontSize: 55, fontFamily: 'Barlow'),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 15),
              //   child: Text(
              //     '℃',
              //     style: TextStyle(fontSize: 20, fontFamily: 'Barlow'),
              //   ),
              // ),
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
                    '35℃↑',
                    style: TextStyle(fontSize: 15, fontFamily: 'Barlow'),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '27℃↓',
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
