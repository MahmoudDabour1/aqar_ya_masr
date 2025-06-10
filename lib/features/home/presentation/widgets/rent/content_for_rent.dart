import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/spacing.dart';

class ContentForRent extends StatelessWidget {
  const ContentForRent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          verticalSpace(16),
          const Center(child: Text("محتوى قسم الإيجار")),
        ],
      ),
    );
  }
}
