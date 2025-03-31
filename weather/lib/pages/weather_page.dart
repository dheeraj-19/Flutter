import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/components/box.dart';
import 'package:weather/components/button.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/service/weather_service.dart';
import 'package:weather/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherService = WeatherService('ce57b03117ab8615cdb6756ab17e4e2d');
  Weather? _weather;

  _fetchWather() async {
    String cityName = await _weatherService.getCurrentCity();
    print(cityName);
    try {
      final weather = await _weatherService.getWeather(cityName);
      print(weather);
      setState(() {
        _weather = weather;
        print(_weather);
      });
    } catch (e) {
      print(e);
    }
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json';

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
        return 'assets/cloud.json';
      case 'rain':
        return 'assets/rain.json';
      case 'snow':
        return 'assets/snow.json';
      case 'sunny':
        return 'assets/sunny.json';
      case 'thunder':
        return 'assets/thunder.json';
      default:
        return 'assets/sunny.json';
    }
  }

  @override
  void initState() {
    super.initState();

    _fetchWather();
  }

  @override
  Widget build(BuildContext context) {
    Color prim = Theme.of(context).colorScheme.primary;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          // Main Weather UI (Centered)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_pin, color: prim),
                const SizedBox(height: 15),
                Text(_weather?.cityName.toUpperCase() ?? "Loading city...",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: prim,
                    )),
                const SizedBox(height: 25),
                Lottie.asset(getWeatherAnimation(_weather?.mainCondition)),
                const SizedBox(height: 25),
                Text('${_weather?.temperature.round() ?? "Loading...."} °C',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: prim,
                    )),
                Text(_weather?.mainCondition ?? "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: prim,
                    )),
                const SizedBox(height: 25),
              ],
            ),
          ),

          // Position the button at the top-right corner
          Positioned(
            top: MediaQuery.of(context).padding.top +
                10, // Below notification bar
            right: 20, // Align to the right
            child: MyBox(
              color: Colors.black,
              child: MyButton(
                color: Colors.white,
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
