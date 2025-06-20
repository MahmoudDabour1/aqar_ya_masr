import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class AqarsCountWidget extends StatelessWidget {
  final String? aqarsCount;
  const AqarsCountWidget({super.key, this.aqarsCount});

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: AppColors.fillColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text("عدد العقارات : $aqarsCount"),
      );
  }
  }
