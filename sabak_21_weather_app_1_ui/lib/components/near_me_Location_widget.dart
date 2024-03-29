import 'package:flutter/material.dart';
import 'package:sabak_21_weather_app_1_ui/constants/app_colors.dart';

class NearMeLocation extends StatelessWidget {
  const NearMeLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.near_me, color: AppColors.white, size: 45),
          Icon(
            Icons.location_city,
            color: AppColors.white,
            size: 45,
          ),
        ],
      ),
    );
  }
}
