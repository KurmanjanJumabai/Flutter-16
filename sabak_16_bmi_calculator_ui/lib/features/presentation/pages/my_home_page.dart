import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_calculator_ui/features/presentation/components/bmi_container.dart';
import 'package:sabak_16_bmi_calculator_ui/features/presentation/components/calculator_container.dart';
import 'package:sabak_16_bmi_calculator_ui/features/presentation/constants/app_colors.dart';
import 'package:sabak_16_bmi_calculator_ui/features/presentation/constants/app_sized_box.dart';
import 'package:sabak_16_bmi_calculator_ui/features/presentation/constants/app_text_styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBgc,
      // appBar: myAppar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 21,
          vertical: 39,
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BmiContainer(
                  icon: Icons.male,
                  text: 'MALE',
                ),
                BmiContainer(icon: Icons.female, text: 'FEMALE'),
              ],
            ),
            AppSize.h18,
            const BmiContainer(
              widthSize: 400,
              heightSize: 140,
            ),
            AppSize.h18,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BmiContainer(
                  text: 'WEIGHT',
                  smText: 60.toString(),
                ),
                BmiContainer(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculatorContainer(),
    );
  }
}

AppBar myAppar() {
  return AppBar(
    backgroundColor: AppColors.appBarBgc,
    centerTitle: true,
    title: const Text(
      'BMI CALCULATOR',
      style: AppTextStyles.bmiTextStyle,
    ),
  );
}
