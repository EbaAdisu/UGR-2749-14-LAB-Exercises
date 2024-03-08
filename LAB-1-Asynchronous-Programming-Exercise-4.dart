import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final apiUrl =
      'https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,wind_speed_10m&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m';

  final weatherApiClient = WeatherApiClient(apiUrl);

  try {
    final weatherData = await weatherApiClient.fetchWeather();

    final currentTemperature = weatherData['current']['temperature_2m'];
    final currentWindSpeed = weatherData['current']['wind_speed_10m'];

    print('Current Temperature: $currentTemperature°C');
    print('Current Wind Speed: $currentWindSpeed m/s');
  } catch (error) {
    print('Error fetching weather data: $error');
  }
}

class WeatherApiClient {
  final String apiUrl;

  WeatherApiClient(this.apiUrl);

  Future<Map<String, dynamic>> fetchWeather() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
