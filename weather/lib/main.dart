import 'package:flutter/material.dart';
import 'package:weather/pages/weather_page.dart';
import 'package:weather/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      home: const WeatherPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
