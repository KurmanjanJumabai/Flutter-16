import 'package:flutter/material.dart';
import 'package:sabak_22_weather_app_get_data/constants/app_colors.dart';
import 'package:sabak_22_weather_app_get_data/constants/app_text_style.dart';

class DetailWeatherCard extends StatelessWidget {
  const DetailWeatherCard({
    super.key,
    required this.windSpeed,
  });
  final String windSpeed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 70,
        height: 150,
        decoration: BoxDecoration(
            color: AppColors.detailContainerColor,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.air,
              color: AppColors.white,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: AppColors.tempContainerColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  windSpeed,
                  style: AppTextstyle.detailTempStyle,
                ),
              ),
            ),
            const Text('SPM', style: AppTextstyle.detailOclock)
          ],
        ),
      ),
    );
  }
}
