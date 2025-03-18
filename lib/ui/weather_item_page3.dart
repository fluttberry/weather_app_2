import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/repository/weather_repository.dart';

class WeatherItemPage3 extends StatefulWidget {
  const WeatherItemPage3({super.key});

  @override
  State<WeatherItemPage3> createState() => _WeatherItemPage3State();
}

class _WeatherItemPage3State extends State<WeatherItemPage3> {
  WeatherRepository repository = WeatherRepository();
  CurrentWeatherModel? currentWeatherModel;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var weatherModel = await repository.getCurrentWeather('dubai');
    setState(() {
      currentWeatherModel = weatherModel;
    });
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
      children: [
        Column(
          children: [
            Image.asset('assets/icons/008-sunrise.png'),
        
            Text(
              '${DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.sys?.sunrise??0)*1000))}AM',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
            Text(
              'Sunrise',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
          ],
        ),

        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/007-sunset.png',),
        
            Text(
              '${DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.sys?.sunset??0)*1000))}PM',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
            Text(
              'Sunset',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset('assets/icons/sand-clock.png'),
        
            Text(
              '13h 1m',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
            Text(
              'Daytime',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
