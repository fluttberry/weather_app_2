import 'package:flutter/material.dart';
import 'package:weather_app_2/ui/weather_item_page1.dart';
import 'package:weather_app_2/ui/weather_item_page2.dart';

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
          Container(
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/graphic.png'),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 600,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeatherItemPage1(),
                  WeatherItemPage2(),
                  WeatherItemPage1(),
                  Container(
                    height: 100,
                    // decoration: BoxDecoration(color: Colors.white),
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: 7,

                        scrollDirection: Axis.horizontal,
                        itemBuilder: (c, i) {
                          return Container(
                            margin: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            height: 101,
                            width: 95,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('test'),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
