import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

InputDecoration getCommonInputDecoration({
  required String labelText,
  Widget? prefixIcon,
  Widget? suffixIcon,
  TextStyle? labelStyle,
  Color? fillColor,
  double? verticalPadding,
}) {
  return InputDecoration(
    isDense: true,
    filled: true,
    fillColor: fillColor??AppColors.fillColor,
    contentPadding: EdgeInsets.symmetric(
      vertical:verticalPadding?? 15.h,
      horizontal: 20.w,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.fillColor, width: 1.3),
      borderRadius: BorderRadius.circular(16.r),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 1.3),
      borderRadius: BorderRadius.circular(16.r),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 1.3),
      borderRadius: BorderRadius.circular(16.r),
    ),
    border: OutlineInputBorder(
      borderSide:  BorderSide.none,
      borderRadius: BorderRadius.circular(16.r),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.fillColor, width: 1.3),
      borderRadius: BorderRadius.circular(16.r),
    ),
    hintText:
      labelText,
    hintStyle: labelStyle ?? AppStyles.font16GrayLight,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
  );
}
