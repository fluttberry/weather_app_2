import 'package:flutter/material.dart';

class WeatherItemPage4 extends StatelessWidget {
  const WeatherItemPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('assets/icons/007-sunny-1.png')],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mon,21',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Barlow',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '35℃↑ 26℃↓',
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
            );
          },
        ),
      ),
    );
  }
}
