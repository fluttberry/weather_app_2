import 'package:flutter/material.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/repository/weather_repository.dart';

class WeatherItemPage0 extends StatefulWidget {
  const WeatherItemPage0({super.key});

  @override
  State<WeatherItemPage0> createState() => _WeatherItemPage0State();
}

class _WeatherItemPage0State extends State<WeatherItemPage0> {
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
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 220,

            alignment: Alignment.center,

            child: Text(
              'Sundy, 19 May 2019, | 4:30PM',

              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
                color: Colors.grey,
              ),
            ),
          ),

          Container(
            width: 100,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Osh',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Barlow',
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.location_on, size: 15, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
