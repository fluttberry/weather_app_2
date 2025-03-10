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
          width: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/008-sunrise.png'),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '6:03 AM',
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
                  Image.asset('assets/icons/007-sunset.png',),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '7:05 PM',
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
                  Image.asset('assets/icons/sand-clock.png'),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '13h 1m',
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
          ),
        ),
      ],
    );
  }
}
