import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../../core/utils/spacing.dart';

class LogoAndTextWidget extends StatelessWidget {
  final String text;

  const LogoAndTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SvgPicture.asset(
            "assets/images/logo_login.svg",
            height: 90.h,
            width: 100.w,
          ),
        ),
        verticalSpace(16),
        Center(
          child: Text(
            text,
            style: AppStyles.font18BlackBold.copyWith(
              fontWeight: FontWeightHelper.extraBold,
              fontSize: 20.sp,
            ),
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
