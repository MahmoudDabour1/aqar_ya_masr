import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_styles.dart';
import '../theming/font_weight_helper.dart';
import '../utils/spacing.dart';
import 'app_custom_button.dart';

class AppCustomDialogWidget extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final String buttonText;

  const AppCustomDialogWidget(
      {super.key, required this.title, required this.onPressed, required this.buttonText});

  @override
  State<AppCustomDialogWidget> createState() => _AppCustomDialogWidgetState();
}

class _AppCustomDialogWidgetState extends State<AppCustomDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: AppColors.whiteColor,
      title: Padding(
        padding: EdgeInsets.all(16.r),
        child: Center(
          child: Text(
            widget.title,
            style: AppStyles.font14BlackLight.copyWith(
              fontWeight: FontWeightHelper.semiBold,
            ),
          ),
        ),
      ),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppCustomButton(
              textButton: "إلغاء",
              btnWidth: 120.w,
              btnHeight: 10.h,
              backgroundColor: AppColors.grayColor,
              textColor: AppColors.whiteColor,
              onPressed: () {
                context.pop();
              },
            ),
            verticalSpace(8),
            AppCustomButton(
              textButton: widget.buttonText,
              btnWidth: 120.w,
              btnHeight: 20.h,
              backgroundColor: Colors.red,
              textColor: AppColors.whiteColor,
              onPressed: widget.onPressed,
            ),
          ],
        ),
      ],
    );
  }
}
