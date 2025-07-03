import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class DoYouHaveAccountWidget extends StatelessWidget {
  const DoYouHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " لديك حساب؟",
          style: AppStyles.font18BlackMedium,
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
          child: Text(
            "تسجيل الدخول",
            style: AppStyles.font18BlackMedium.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
