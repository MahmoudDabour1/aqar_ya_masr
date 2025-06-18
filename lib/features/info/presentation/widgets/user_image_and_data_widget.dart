import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/font_weight_helper.dart';
import 'package:aqar_ya_masr/features/info/data/models/profile_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/shared_pref_keys.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import 'center_container_items.dart';

class UserImageAndDataWidget extends StatefulWidget {
  final ProfileDataModel profileDataModel;

  const UserImageAndDataWidget({super.key, required this.profileDataModel});

  @override
  State<UserImageAndDataWidget> createState() => _UserImageAndDataWidgetState();
}

class _UserImageAndDataWidgetState extends State<UserImageAndDataWidget> {
  bool isLoggedInUser = false;

  void _checkLogin() async {
    final token = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
    if (token != null && mounted) {
      setState(() {
        isLoggedInUser = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoggedInUser) {
      return const SizedBox.shrink();
    }
    return SizedBox(
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
                  backgroundImage:
                      widget.profileDataModel.data?.profile?.image == null
                          ? AssetImage('assets/images/user_placeholder.png')
                          : NetworkImage(
                              widget.profileDataModel.data?.profile?.image),
                ),
                horizontalSpace(8),
                isLoggedInUser
                    ? Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.profileDataModel.data?.profile?.name ??
                                    "اسم المستخدم",
                                style: AppStyles.font16whiteMedium.copyWith(
                                  fontWeight: FontWeightHelper.bold,
                                ),
                              ),
                              Text(
                                widget.profileDataModel.data?.profile?.phone ?? "",
                                style: AppStyles.font16whiteMedium.copyWith(
                                  fontWeight: FontWeightHelper.light,
                                ),
                              ),
                            ],
                          ),
                        horizontalSpace(32),
                        AppCustomButton(
                          textButton: "الاعدادات",
                          btnWidth: 100.w,
                          btnHeight: 30.h,
                          backgroundColor: AppColors.fillColor,
                          textColor: AppColors.primaryColor,
                          onPressed: () {
                            context.pushNamed(
                              Routes.editUserDataScreen,
                            );
                          },
                        ),
                      ],
                    )
                    : AppCustomButton(
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
