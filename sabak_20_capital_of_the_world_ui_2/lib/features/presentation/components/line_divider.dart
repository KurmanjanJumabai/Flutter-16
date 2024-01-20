import 'package:flutter/material.dart';
import 'package:sabak_20_capital_of_the_world_ui_2/features/repositories/theme/app_colors.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.black,
      indent: 14,
      endIndent: 14,
    );
  }
}
