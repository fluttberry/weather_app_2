import 'package:flutter/material.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/repository/weather_repository.dart';

class WeatherItemPage2 extends StatefulWidget {
  const WeatherItemPage2({super.key});

  @override
  State<WeatherItemPage2> createState() => _WeatherItemPage2State();
}

class _WeatherItemPage2State extends State<WeatherItemPage2> {
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image.asset('assets/icons/027-humidity.png'),
            Text(
              '${currentWeatherModel?.main?.humidity ?? '-'}%',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
            Text(
              'Humidiy',
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
            Image.asset('assets/icons/050-barometer.png',),
                
            Text(
              '${currentWeatherModel?.main?.pressure ?? '-'}mBar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
            Text(
              'Pressure',
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
            Image.asset('assets/icons/001-wind-1.png'),
        
            Text(
              '${currentWeatherModel?.wind?.speed ?? '-'}km/h',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Barlow',
              ),
            ),
            Text(
              'Wind',
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
