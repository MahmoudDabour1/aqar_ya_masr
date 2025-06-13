import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class AllAqarButton extends StatelessWidget {
  final Widget navigationTarget;
  const AllAqarButton({super.key, required this.navigationTarget});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigationTarget,
          ),
        );
      },
      child: Row(
        children: [
          Text(
            "الكل",
            style: AppStyles.font18BlackMedium,
          ),
          horizontalSpace(6),
          SvgPicture.asset(
            "assets/images/left_arrow.svg",
            height: 25.h,
            width: 25.w,
          ),
        ],
      ),
    );
  }
}
