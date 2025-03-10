import 'package:flutter/material.dart';

class WeatherItemPage3 extends StatefulWidget {
  const WeatherItemPage3({super.key});

  @override
  State<WeatherItemPage3> createState() => _WeatherItemPage3State();
}

class _WeatherItemPage3State extends State<WeatherItemPage3> {
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
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/027-humidity.png'),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '49%',
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
                    '1,007mBar',
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
                    '23 km/h',
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
