import 'package:flutter/material.dart';
import 'package:sabak_18_bmi_logic_1/features/presentation/constants/app_colors.dart';
import 'package:sabak_18_bmi_logic_1/features/presentation/constants/app_text_styles.dart';

class CalculatorContainer extends StatelessWidget {
  const CalculatorContainer({
    super.key,
    this.ontap,
  });
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 45,
        color: AppColors.buttonContainerColor,
        child: Center(
            child: Text('Calculator'.toUpperCase(),
                style: AppTextStyles.calculatorTextStyle)),
      ),
    );
  }
}
