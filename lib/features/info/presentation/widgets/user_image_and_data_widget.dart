import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import 'center_container_items.dart';

class UserImageAndDataWidget extends StatelessWidget {
  const UserImageAndDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 260.h,
      child: Stack(
        children: [
          Container(
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
            ),
          ),
          Positioned(
            top: 50.h,
            right: 16.w,
            child: Row(
              children: [
                CircleAvatar(
                    radius: 40.r,
                    backgroundImage: AssetImage(
                        'assets/images/user_placeholder.png')),
                horizontalSpace(8),
                AppCustomButton(
                  textButton: "تسجيل الدخول",
                  btnWidth: 100.w,
                  btnHeight: 30.h,
                  backgroundColor: AppColors.fillColor,
                  textColor: AppColors.primaryColor,
                  onPressed: () {
                    context.pushNamed(
                      Routes.loginScreen,
                    );
                  },
                ),
              ],
            ),
          ),
          Positioned(
            left: 10.w,
            right: 10.w,
            top: 150.h,
            child: Container(
              height: 100.h,
              width: MediaQuery.sizeOf(context).width - 20.w,
              decoration: BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: CenterContainerItems(),
            ),
          ),
        ],
      ),
    );
  }
}
