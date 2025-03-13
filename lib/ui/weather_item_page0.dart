import 'package:flutter/material.dart';

class WeatherItemPage0 extends StatelessWidget {
  const WeatherItemPage0({super.key});

  @override
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
