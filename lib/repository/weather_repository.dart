import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_2/const/const.dart';
import 'package:weather_app_2/model/current_weather_model.dart';

class WeatherRepository {
 Future <CurrentWeatherModel?> getCurrentWeather (String cityName) async{
    var res = await http.get(Uri.parse('${Const.BaseUrl}/weather?q=$cityName&appid=${Const.ApiKey}&units=metric'));
    if (res.statusCode==200){
      return CurrentWeatherModel.fromJson(jsonDecode(res.body));
    } else{
      return null;
    }
  }
}