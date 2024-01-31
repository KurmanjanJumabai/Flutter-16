import 'package:flutter/material.dart';
import 'package:sabak_21_weather_app_1_ui/constants/app_text_style.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          const Text(
            '8',
            style: AppTextstyle.tempStyle,
          ),
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Weather-sun-clouds-rain.svg/800px-Weather-sun-clouds-rain.svg.png',
            width: 150,
          ),
        ],
      ),
    );
  }
}
