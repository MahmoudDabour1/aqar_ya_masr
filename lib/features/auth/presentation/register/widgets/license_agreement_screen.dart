import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';

class LicenseAgreementScreen extends StatelessWidget {
  const LicenseAgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          "الشروط والأحكام",
          style: AppStyles.font18BlackBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            Html(data: cubit.license.toString(), style: {
              "p": Style(
                fontSize: FontSize.xLarge,
                color: AppColors.blackColor,
              ),
            }),
          ],
        ),
      ),
    );
  }
}
