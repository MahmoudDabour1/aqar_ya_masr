import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomSearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final Color? fillColor;
  final VoidCallback? onPressedFilter;

  const AppCustomSearchTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.onSaved,
    this.fillColor,
    this.onPressedFilter,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "بحث",

        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 8.w,left: 8),
          child: SvgPicture.asset(
            "assets/icons/ic_search.svg",
            height: 25.h,
            width: 25.w,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: onPressedFilter,
          child: Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: SvgPicture.asset(
              "assets/icons/ic_filter.svg",
              height: 25.h,
              width: 25.w,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide.none,
        ),
        hintStyle: AppStyles.font16GrayLight,
        fillColor: fillColor ?? AppColors.fillColor,
        filled: true,
        // hoverColor: AppColors.blueColor,
      ),
    );
  }
}
