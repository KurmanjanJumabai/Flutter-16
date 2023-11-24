import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.winterColor, required this.text});
  final Color winterColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: winterColor),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
