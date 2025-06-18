import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class EditUserDataImageWidget extends StatelessWidget {
  const EditUserDataImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Center(
          child: Stack(
            children: [
              CircleAvatar(
                radius: 60.r,
                backgroundImage:
                    AssetImage('assets/images/user_placeholder.png'),
              ),
              Positioned(
                bottom: 0.h,
                right: 5.w,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.fillColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          useSafeArea: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          constraints: BoxConstraints(
                            maxHeight: 0.25.sh,
                          ),
                          context: context,
                          builder: (context) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "اختر الصوره",
                                    style: AppStyles.font18BlackMedium,
                                  ),
                                ),
                                Divider(
                                  color: AppColors.blackColor,
                                  height: 2.h,
                                ),
                                verticalSpace(8),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "الكاميرا",
                                    style: AppStyles.font18BlackMedium,
                                  ),
                                ),
                                verticalSpace(8),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "المعرض",
                                    style: AppStyles.font18BlackMedium,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: SvgPicture.asset(
                        "assets/images/icon_camera.svg",
                        height: 30.h,
                        width: 30.w,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
