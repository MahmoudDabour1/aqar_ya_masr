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
  final ProfileDataModel? profileDataModel;

  const UserImageAndDataWidget({super.key, required this.profileDataModel});

  @override
  State<UserImageAndDataWidget> createState() => _UserImageAndDataWidgetState();
}

class _UserImageAndDataWidgetState extends State<UserImageAndDataWidget> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final isLogged = await SharedPrefHelper.getBool(SharedPrefKeys.isLogged) ?? false;
    if (mounted) {
      setState(() {
        _isLoggedIn = isLogged;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
            child: _isLoggedIn
                ? _buildLoggedInUI()
                : _buildLoggedOutUI(),
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

  Widget _buildLoggedInUI() {
    final profile = widget.profileDataModel?.data?.profile;
    return Row(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundImage: profile?.image != null
              ? NetworkImage(profile!.image)
              : const AssetImage('assets/images/user_placeholder.png') as ImageProvider,
        ),
        horizontalSpace(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              profile?.name ?? 'اسم المستخدم',
              style: AppStyles.font16whiteMedium.copyWith(
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            if (profile?.phone != null)
              Text(
                profile!.phone!,
                style: AppStyles.font16whiteMedium.copyWith(
                  fontWeight: FontWeightHelper.light,
                ),
              ),
          ],
        ),
        horizontalSpace(32),
        AppCustomButton(
          textButton: "الإعدادات",
          btnWidth: 100.w,
          btnHeight: 30.h,
          backgroundColor: AppColors.fillColor,
          textColor: AppColors.primaryColor,
          onPressed: () {
            context.pushNamed(
              Routes.editUserDataScreen,
              arguments: widget.profileDataModel,
            );
          },
        ),
      ],
    );
  }

  Widget _buildLoggedOutUI() {
    return Row(
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundImage: const AssetImage('assets/images/user_placeholder.png'),
        ),
        horizontalSpace(8),
        AppCustomButton(
          textButton: "تسجيل الدخول",
          btnWidth: 100.w,
          btnHeight: 30.h,
          backgroundColor: AppColors.fillColor,
          textColor: AppColors.primaryColor,
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}