import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/utils/spacing.dart';


class PriceContainerItem extends StatelessWidget {
  final String price;
  final String aboveTitle;

  const PriceContainerItem(
      {super.key, required this.price, required this.aboveTitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            aboveTitle,
            style: AppStyles.font18BlackMedium.copyWith(
              fontWeight: FontWeightHelper.regular,
            ),
          ),
          verticalSpace(8),
          Container(
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColors.blackColor),
            ),
            child: Center(
              child: Text(
                price.toString(),
                style: AppStyles.font14BlackLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
