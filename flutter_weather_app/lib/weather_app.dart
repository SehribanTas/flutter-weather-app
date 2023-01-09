import 'package:flutter/material.dart';
import 'package:flutter_weather_app/widget/weather_icon.dart';

import 'widget/last_update_widget.dart';
import 'widget/location_widget.dart';
import 'widget/max_min_temp.dart';
import 'widget/select_city.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String selectedCity = 'Gaziantep';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
              onPressed: (() async {
                String newSelectedCity = await Navigator.push(context,
                    MaterialPageRoute(builder: ((context) {
                  return SelectCity();
                })));
                setState(() {
                  selectedCity = newSelectedCity;
                });
              }),
              icon: const Icon(Icons.search))
        ],
      ),
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: LocationWidget(selectCity: selectedCity)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: LastUpdateWidget()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: WeatherIcon()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: MaxMinTemp()),
          ),
        ],
      )),
    );
  }
}
