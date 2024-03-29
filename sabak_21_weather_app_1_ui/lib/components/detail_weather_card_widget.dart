import 'package:flutter/material.dart';
import 'package:sabak_21_weather_app_1_ui/constants/app_colors.dart';
import 'package:sabak_21_weather_app_1_ui/constants/app_text_style.dart';

class DetailWeatherCard extends StatelessWidget {
  const DetailWeatherCard({
    super.key,
  });

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
              width: 25,
              height: 45,
              decoration: BoxDecoration(
                  color: AppColors.tempContainerColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  '8',
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
