import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';


class PriceFilterRangeWidget extends StatelessWidget {
  final double minLimit;
  final double maxLimit;
  final RangeValues currentRange;
  final void Function(RangeValues)? onChanged;

  const PriceFilterRangeWidget({
    super.key,
    required this.minLimit,
    required this.maxLimit,
    required this.currentRange,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: currentRange,
      min: minLimit,
      max: maxLimit,
      // divisions: 20,
      activeColor: AppColors.primaryColor,
      overlayColor:
          WidgetStateProperty.resolveWith((states) => AppColors.whiteColor),
      labels: RangeLabels(
        "${currentRange.start.toInt()}",
        "${currentRange.end.toInt()}",
      ),
      onChanged: onChanged,
    );
  }
}
