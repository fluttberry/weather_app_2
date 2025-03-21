import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_2/model/current_weather_model.dart';
import 'package:weather_app_2/model/forcast_weather_model.dart';
import 'package:weather_app_2/repository/weather_repository.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  WeatherRepository repository = WeatherRepository();
  CurrentWeatherModel? currentWeatherModel;
  ForcastWeatherModel? forcastWeatherModel;
  TextEditingController cityController = TextEditingController(text: 'Osh');

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var weatherModel = await repository.getCurrentWeather(cityController.text);
    var forcastModel = await repository.getForcastWeather(cityController.text);

    setState(() {
      currentWeatherModel = weatherModel;
      forcastWeatherModel = forcastModel;
    });
  }

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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ROW #0 STARTS HERE.
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 220,

                          alignment: Alignment.center,

                          child: Text(
                            '${DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.dt ?? 0) * 1000)}',

                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                              color: Colors.grey,
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                                        mainAxisSize: MainAxisSize.min,
                                
                                  children: [
                                    Text(
                                      'City',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Barlow',
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(25),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        child: TextField(
                                          controller: cityController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        getData();
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Search',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Barlow',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                  
                                );
                                
                              },
                            );
                          },
                          child: Container(
                            width: 150,
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
                                  '${currentWeatherModel?.name ?? '-'}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Barlow',
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ROW #1 STARTS HERE.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(

                        children: [
                          Image.network(
                            'https://openweathermap.org/img/wn/${currentWeatherModel?.weather?.first.icon}.png',
                          ),
                          Text(
                            '${currentWeatherModel?.weather?.first.main ?? '-'}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
                        ],
                      ),

                      Text(
                        '${currentWeatherModel?.main?.temp?.round() ?? '-'}℃',
                        style: TextStyle(fontSize: 50, fontFamily: 'Barlow'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${currentWeatherModel?.main?.tempMax ?? '-'}℃↑',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Barlow',
                            ),
                          ),
                          Text(
                            '${currentWeatherModel?.main?.tempMin ?? '-'}℃↓',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Barlow',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // ROW #2 STARTS HERE.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/icons/027-humidity.png'),
                          Text(
                            '${currentWeatherModel?.main?.humidity ?? '-'}%',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
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

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/050-barometer.png'),

                          Text(
                            '${currentWeatherModel?.main?.pressure ?? '-'}mBar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
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
                      Column(
                        children: [
                          Image.asset('assets/icons/001-wind-1.png'),

                          Text(
                            '${currentWeatherModel?.wind?.speed ?? '-'}km/h',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
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
                  // ROW #3 STARTS HERE.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/icons/008-sunrise.png'),

                          Text(
                            '${DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.sys?.sunrise ?? 0) * 1000))}AM',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
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

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/007-sunset.png'),

                          Text(
                            '${DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.sys?.sunset ?? 0) * 1000))}PM',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
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
                      Column(
                        children: [
                          Image.asset('assets/icons/sand-clock.png'),

                          Text(
                            '${DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.sys?.sunset ?? 0) * 1000).difference(DateTime.fromMillisecondsSinceEpoch((currentWeatherModel?.sys?.sunrise ?? 0) * 1000)).inHours}: Hr',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Barlow',
                            ),
                          ),
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
                  // ROW #4 STARTS HERE.
                  Container(
                    height: 100,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: forcastWeatherModel?.list?.length ?? 0,

                        scrollDirection: Axis.horizontal,
                        itemBuilder: (contex, index) {
                          return Container(
                            margin: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            height: 101,
                            width: 95,
                            decoration: BoxDecoration(
                              color: Colors.white,

                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withAlpha(30),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://openweathermap.org/img/wn/${forcastWeatherModel?.list?[index].weather?.first.icon}.png',
                                    ),
                                  ],
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch((forcastWeatherModel?.list?[index].dt ?? 0) * 1000))}',
                                      style: TextStyle(
                                        fontSize: 12,
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
                                      '${currentWeatherModel?.main?.temp?.round() ?? '-'}℃',
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
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget item(String img, String value, String title) {
    return Column(children: [Text('data')]);
  }
}
