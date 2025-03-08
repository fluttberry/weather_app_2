import 'package:flutter/material.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/graphic.png',
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
          ),
          SizedBox(height: 800,), 
          Container(
            height: 531,
            width: double.infinity,
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
