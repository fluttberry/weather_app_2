// import 'package:flutter/material.dart';
// import 'package:weather_app_2/model/current_weather_model.dart';
// import 'package:weather_app_2/repository/weather_repository.dart';

// class WeatherItemPage4 extends StatefulWidget {
//   const WeatherItemPage4({super.key});

//   @override
//   State<WeatherItemPage4> createState() => _WeatherItemPage4State();
// }

// class _WeatherItemPage4State extends State<WeatherItemPage4> {
//   WeatherRepository repository = WeatherRepository();
//   CurrentWeatherModel? currentWeatherModel;
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   getData() async {
//     var weatherModel = await repository.getCurrentWeather('osh');
//     setState(() {
//       currentWeatherModel = weatherModel;
//     });
//   }
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       child: Expanded(
//         child: ListView.builder(
//           itemCount: 7,

//           scrollDirection: Axis.horizontal,
//           itemBuilder: (c, i) {
//             return Container(
//               margin: EdgeInsets.all(8),
//               alignment: Alignment.center,
//               height: 101,
//               width: 95,
//               decoration: BoxDecoration(
//                 color: Colors.white,

//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withAlpha(30),
//                     spreadRadius: 5,
//                     blurRadius: 5,
//                     offset: Offset(3, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [Image.asset('assets/icons/007-sunny-1.png')],
//                   ),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Mon,21',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Barlow',
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '35℃↑ 26℃↓',
//                         style: TextStyle(
//                           fontSize: 10,
//                           color: Colors.grey,
//                           fontWeight: FontWeight.bold,
//                           fontFamily: 'Barlow',
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
