import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../logic/auth_cubit.dart';

class RegisterCheckBoxsWidget extends StatefulWidget {
  const RegisterCheckBoxsWidget({super.key});

  @override
  State<RegisterCheckBoxsWidget> createState() =>
      _RegisterCheckBoxsWidgetState();
}

class _RegisterCheckBoxsWidgetState extends State<RegisterCheckBoxsWidget> {
  bool isOfficeChecked = false;
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Column(
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
                value: isOfficeChecked,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                onChanged: (value) {
                  setState(() {
                    isOfficeChecked = !isOfficeChecked;
                  });
                  isOfficeChecked == true
                      ? cubit.userType = "office"
                      : cubit.userType = "user";
                },
                activeColor: AppColors.primaryColor,
              ),
            ),
            Text(
              "التسجيل كمكتب عقارى",
              style: AppStyles.font18BlackMedium,
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          children: [
            Transform.scale(
              scale: 1.3,
              child: Checkbox(
                value: isTermsAccepted,
                onChanged: (value) {
                  setState(() {
                    isTermsAccepted = !isTermsAccepted;
                  });
                 cubit.registerAcceptedTerms = value!;
                },
                activeColor: AppColors.primaryColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.licenseAgreementScreen);
              },
              child: Text(
                "أوافق على الشروط والأحكام",
                style: AppStyles.font18BlackMedium.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        verticalSpace(16),
      ],
    );
  }
}
