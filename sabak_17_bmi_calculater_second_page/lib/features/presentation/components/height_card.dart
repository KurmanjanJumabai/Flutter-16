import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak_17_bmi_calculater_second_page/features/presentation/constants/app_text_styles.dart';

class HeightCard extends StatelessWidget {
  const HeightCard(
      {super.key,
      required this.text,
      required this.san,
      required this.cmText,
      required this.height,
      required this.onChanged});

  final String text;
  final int san;
  final String cmText;
  final int height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.appTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '$san',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  cmText,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 184, 180, 180),
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 300.0,
                value: height.toDouble(),
                onChanged: onChanged,
              ),
            )
          ],
        ));
  }
}
