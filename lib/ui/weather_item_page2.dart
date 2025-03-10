import 'package:flutter/material.dart';

class WeatherItemPage2 extends StatefulWidget {
  const WeatherItemPage2({super.key});

  @override
  State<WeatherItemPage2> createState() => _WeatherItemPage2State();
}

class _WeatherItemPage2State extends State<WeatherItemPage2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 61,
          width: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: 
              // Image.asset('assets/icons/027-humidity.png'),

              // Text(
              //   '49%',
              //   style: TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.bold,
              //     fontFamily: 'Barlow',
              //   ),
              // ),
            
          ),
        ),

        Container(
          height: 87,
          width: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Text('33', style: TextStyle(fontSize: 55, fontFamily: 'Barlow')),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  '℃',
                  style: TextStyle(fontSize: 20, fontFamily: 'Barlow'),
                ),
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
