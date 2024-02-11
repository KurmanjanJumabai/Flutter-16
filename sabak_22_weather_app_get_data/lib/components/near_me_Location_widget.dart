import 'package:flutter/material.dart';
import 'package:sabak_22_weather_app_get_data/constants/app_colors.dart';

class NearMeLocation extends StatelessWidget {
  const NearMeLocation({
    super.key,
    required this.cityNamePressed,
    required this.LocationPressed,
  });
  final void Function() cityNamePressed;
  final void Function()? LocationPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: LocationPressed,
              icon: Icon(Icons.near_me, color: AppColors.white, size: 45)),
          IconButton(
            onPressed: cityNamePressed,
            icon: Icon(
              Icons.location_city,
              color: AppColors.white,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}
