import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_calculator_ui/features/presentation/constants/app_text_styles.dart';

class BmiContainer extends StatelessWidget {
  const BmiContainer({
    super.key,
    this.icon,
    this.text,
    this.san,
    this.smText,
    this.widthSize = 177,
    this.heightSize = 157,
  });
  final IconData? icon;
  final String? text;
  final int? san;
  final String? smText;
  final double? widthSize;
  final double? heightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widthSize,
        height: heightSize,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 60,
            ),
            Text(
              text ?? '',
              style: AppTextStyles.maleTextStyle,
            ),
            Text(
              smText ?? '',
              style: AppTextStyles.smleTextStyle,
            ),
          ],
        ));
  }
}
