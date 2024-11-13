
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;


class WeatherForecastViewModel extends ChangeNotifier {
  List<Map<String, dynamic>> _forecastData = [];
  bool _isLoading = true;

  List<Map<String, dynamic>> get forecastData => _forecastData;
  bool get isLoading => _isLoading;

  //Call the fetch weather method in the constructor
  WeatherForecastViewModel() {
    fetchWeatherForecast();
  }

  //Fetch the weather forecast
  Future<void> fetchWeatherForecast() async {
    final url = Uri.parse(
      //This is a free api btw, attribution is required
        'https://api.open-meteo.com/v1/forecast?latitude=-29.0852&longitude=26.1596&daily=temperature_2m_max,temperature_2m_min,precipitation_sum&timezone=Africa/Johannesburg');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List dailyTemps = data['daily']['temperature_2m_max'];
      
      
      final today = DateTime.now();
      _forecastData = List.generate(4, (index) {
        final forecastDate = today.add(Duration(days: index));
        final dayLabel = DateFormat('EEEE').format(forecastDate);

        return {
          'day': index == 0 ? 'Today' : dayLabel,
          'temperature': dailyTemps[index].toString(),
          'condition': index == 0
              ? 'rainy'
              : (index == 1 ? 'stormy' : 'sunny'), // sample conditions
        };
      });
    } else {
      print("Failed to fetch weather data:${response.statusCode}; ${response.body}");
    }

    //Once the we get the api results we set loading variable to false and notify listeners
    _isLoading = false;
    notifyListeners();
  }
}
