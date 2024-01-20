import 'package:flutter/material.dart';
import 'package:sabak_17_bmi_calculater_second_page/features/presentation/constants/app_colors.dart';
import 'package:sabak_17_bmi_calculater_second_page/features/presentation/constants/app_text_styles.dart';

class CalculatorContainer extends StatelessWidget {
  const CalculatorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      color: AppColors.buttonContainerColor,
      child: Center(
          child: Text('Calculator'.toUpperCase(),
              style: AppTextStyles.calculatorTextStyle)),
    );
  }
}
