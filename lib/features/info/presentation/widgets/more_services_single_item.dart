import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class MoreServicesSingleItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;

  const MoreServicesSingleItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(
            imageUrl,
            height: 35.h,
            width: 35.w,
          ),
          horizontalSpace(16),
          Text(
            title,
            style: AppStyles.font14BlackLight,
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/images/left_arrow_black.svg",
            width: 20.w,
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
