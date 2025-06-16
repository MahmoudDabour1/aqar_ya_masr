import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppStyles {
  static TextStyle font16grayRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16whiteMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16GrayLight = TextStyle(
    fontSize: 16.sp,
    color: AppColors.grayColor,
    fontWeight: FontWeightHelper.light,
  );static TextStyle font14BlackLight = TextStyle(
    fontSize: 14.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.light,
  );
  static TextStyle font18BlackBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18BlackMedium = TextStyle(
    fontSize: 18.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.medium,
  );static TextStyle font18PrimaryMedium = TextStyle(
    fontSize: 18.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.medium,
  );static TextStyle font18PrimaryExtraBold = TextStyle(
    fontSize: 22.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.extraBold,
  );
}
