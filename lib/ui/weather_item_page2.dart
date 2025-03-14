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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 61,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/027-humidity.png'),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${currentWeatherModel?.main?.humidity ?? '-'}%',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Barlow',
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ],
          ),
        ),

        Container(
          height: 75,
          width: 75,
          
          decoration: BoxDecoration(color: Colors.white),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/050-barometer.png',),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${currentWeatherModel?.main?.pressure ?? '-'}mBar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Barlow',
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            ],
          ),
        ),
        Container(
          height: 61,
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/001-wind-1.png'),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${currentWeatherModel?.wind?.speed ?? '-'}km/h',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Barlow',
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
          ),
        ),
      ],
    );
  }
}
