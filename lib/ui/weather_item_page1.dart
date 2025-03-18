// import 'package:flutter/material.dart';
// import 'package:weather_app_2/model/current_weather_model.dart';
// import 'package:weather_app_2/repository/weather_repository.dart';

// class WeatherItemPage1 extends StatefulWidget {
//   const WeatherItemPage1({super.key});

//   @override
//   State<WeatherItemPage1> createState() => _WeatherItemPage1State();
// }

// class _WeatherItemPage1State extends State<WeatherItemPage1> {
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
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           children: [
//             Image.network(
//               'https://openweathermap.org/img/wn/${currentWeatherModel?.weather?.first.icon}.png',
//             ),
//             Text('${currentWeatherModel?.weather?.first.main ?? '-'}',
//               style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Barlow',
//               ),
//             ),
//           ],
//         ),

//         Text(
//           '${currentWeatherModel?.main?.temp?.round() ?? '-'}℃',
//           style: TextStyle(fontSize: 50, fontFamily: 'Barlow'),
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '${currentWeatherModel?.main?.tempMax ?? '-'}℃↑',
//               style: TextStyle(fontSize: 15, fontFamily: 'Barlow'),
//             ),
//             Text(
//               '${currentWeatherModel?.main?.tempMin ?? '-'}℃↓',
//               style: TextStyle(fontSize: 15, fontFamily: 'Barlow'),
//             ),
//           ],
//         ),
//       ],
//     );
//    }
// }
