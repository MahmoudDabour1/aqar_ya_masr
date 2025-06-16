import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBatTitle;
  const AppCustomAppBar({super.key, required this.appBatTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Icon(
          Icons.arrow_back,
          size: 35.r,
        ),
      ),
      backgroundColor: AppColors.whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        appBatTitle,
        style: AppStyles.font18BlackMedium,
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
