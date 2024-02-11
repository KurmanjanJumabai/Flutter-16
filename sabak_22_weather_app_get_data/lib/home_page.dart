import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak_22_weather_app_get_data/components/city_name_widget.dart';

import 'package:sabak_22_weather_app_get_data/components/near_me_Location_widget.dart';
import 'package:sabak_22_weather_app_get_data/components/temperature_widget.dart';
import 'package:sabak_22_weather_app_get_data/constants/api_const.dart';
import 'package:sabak_22_weather_app_get_data/weather_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> cities = [
    'Москва',
    'Екатеринбург',
    'Казань',
    'Сочи',
    'Новосибирск',
    'Владивосток',
    'Самара',
    'Иркутск'
  ];
  Weather? weather;
  Future<Weather?> fetchData() async {
    final dio = Dio();
    final result = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=russia,&appid=41aa18abb8974c0ea27098038f6feb1b');
    if (result.statusCode == 200) {
      weather = Weather(
        id: result.data['weather'][0]['id'],
        temp: result.data['main']['temp'],
        icon: result.data["weather"][0]["icon"],
        name: result.data['name'],
        speed: result.data['wind']['speed'],
      );
      return weather;
    } else {
      return null;
    }
  }

// // Гелокатор учун функция

  Future<void> weatherLocation() async {
    setState(() {
      weather = null;
    });
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final res = await dio
            .get(ApiConst.LatLongApi(position.latitude, position.longitude));
        if (res.statusCode == 200) {
          weather = Weather(
            id: res.data['weather'][0]['id'],
            icon: res.data['weather'][0]['icon'],
            temp: res.data['current']['temp'],
            name: res.data['timezone'],
            // country: res.data['sys']['country'],
          );
        }
        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      final dio = Dio();
      final res = await dio
          .get(ApiConst.LatLongApi(position.latitude, position.longitude));
      if (res.statusCode == 200) {
        weather = Weather(
          id: res.data['weather'][0]['id'],
          icon: res.data['weather'][0]['icon'],
          temp: res.data['current']['temp'],
          name: res.data['timezone'],
          // country: res.data['sys']['country'],
        );
      }
      setState(() {});
    }
  }

  // Шаарлардын АПИси мн иштоочу функция
  Future<void> weatherName([String? name]) async {
    final dio = Dio();
    final result = await dio.get(ApiConst.cityName(name ?? 'Moscow'));
    if (result.statusCode == 200) {
      print(result.data);
      weather = Weather(
        id: result.data['weather'][0]['id'],
        temp: result.data['main']['temp'],
        icon: result.data['weather'][0]['icon'],
        name: result.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    weatherName();
  }

  void bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                final city = cities[index];
                return ListTile(
                  title: InkWell(
                    onTap: () {
                      setState(() {
                        weather = null;
                      });
                      weatherName(city);
                      Navigator.pop(context);
                    },
                    child: Card(
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            city,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                );
              });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppar(),
      body: weather == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://russo-travel.ru/upload/medialibrary/48e/48ee74b8158718c4bd8ad19416e53d08.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NearMeLocation(
                      LocationPressed: () async {
                        await weatherLocation();
                      },
                      cityNamePressed: () {
                        bottomSheet();
                      },
                    ),
                    TemperatureWidget(
                      tempText: "${(weather!.temp - 273.15).floorToDouble()}",
                      tempImage:
                          'https://openweathermap.org/img/wn/${weather!.icon}@2x.png',
                    ),
                    CityNameWidget(
                      cityName: weather!.name,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // DetailWeatherCard(
                        //   windSpeed: '${(weather!.speed!).toInt()}',
                        // ),
                        // DetailWeatherCard(
                        //   windSpeed: '${(weather!.speed!).toInt()}',
                        // ),
                        // DetailWeatherCard(
                        //   windSpeed: '${(weather!.speed!).toInt()}',
                        // ),
                        // DetailWeatherCard(
                        //   windSpeed: '${(weather!.speed!).toInt()}',
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

AppBar _myAppar() {
  return AppBar(
    title: const Center(
      child: Text(
        'Weather app',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
      ),
    ),
  );
}
