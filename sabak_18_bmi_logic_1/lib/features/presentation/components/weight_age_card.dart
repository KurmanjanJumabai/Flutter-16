import 'package:flutter/material.dart';
import 'package:sabak_18_bmi_logic_1/features/presentation/constants/app_colors.dart';
import 'package:sabak_18_bmi_logic_1/features/presentation/constants/app_text_styles.dart';

class WeightAgeCard extends StatelessWidget {
  const WeightAgeCard(
      {super.key,
      required this.text,
      required this.san,
      required this.removeIcon,
      required this.addIcon,
      required this.degrement,
      required this.ingrement});
  final String text;
  final int san;
  final IconData removeIcon;
  final IconData addIcon;
  final void Function() degrement;
  final void Function() ingrement;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 157,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            text.toUpperCase(),
            style: AppTextStyles.appTextStyle,
          ),
          Text(
            '$san',
            style: AppTextStyles.cmTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: AppColors.buttonContainerColor,
                onPressed: degrement,
                icon: Icon(
                  removeIcon,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              IconButton(
                color: AppColors.buttonContainerColor,
                onPressed: ingrement,
                icon: Icon(
                  addIcon,
                  size: 40,
                  color: Colors.white,
                ),
              )
            ],
          )
        ]));
  }
}
