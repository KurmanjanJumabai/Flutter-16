import 'package:flutter/material.dart';
import 'package:sabak_18_bmi_logic_1/features/presentation/constants/app_text_styles.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard({
    super.key,
    this.icon,
    this.text,
    required this.maleFemale,
  });
  final IconData? icon;
  final String? text;
  final bool maleFemale;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        height: 157,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: maleFemale ? const Color(0xffFF0F65) : Colors.white,
              size: 60,
            ),
            Text(
              text ?? '',
              style: AppTextStyles.appTextStyle,
            ),
          ],
        ));
  }
}
