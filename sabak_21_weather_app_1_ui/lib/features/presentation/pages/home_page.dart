import 'package:flutter/material.dart';
import 'package:sabak_21_weather_app_1_ui/components/city_name_widget.dart';
import 'package:sabak_21_weather_app_1_ui/components/detail_weather_card_widget.dart';
import 'package:sabak_21_weather_app_1_ui/components/near_me_Location_widget.dart';
import 'package:sabak_21_weather_app_1_ui/components/temperature_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _myAppar(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://www.brett-robinson.com/uploads/sunset-on-the-gulf.jpg'),
                fit: BoxFit.cover),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NearMeLocation(),
              TemperatureWidget(),
              CityNameWidget(),
              Row(
                children: [
                  DetailWeatherCard(),
                  DetailWeatherCard(),
                  DetailWeatherCard(),
                  DetailWeatherCard(),
                ],
              )
            ],
          ),
        ));
  }

  AppBar _myAppar() {
    return AppBar(
      title: const Center(
        child: Text(
          'Тапшырма-09',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
