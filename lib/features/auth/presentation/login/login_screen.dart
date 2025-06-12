import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/features/auth/presentation/login/widgets/have_an_account_widget.dart';
import 'package:aqar_ya_masr/features/auth/presentation/login/widgets/login_button.dart';
import 'package:aqar_ya_masr/features/auth/presentation/login/widgets/login_inputs_widget.dart';
import 'package:aqar_ya_masr/features/auth/presentation/widgets/logo_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/spacing.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 64.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogoAndTextWidget(text: "تسجيل الدخول"),
                LoginInputsWidget(formKey: loginFormKey,),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "نسيت كلمة المرور؟",
                    style: AppStyles.font18PrimaryMedium,
                  ),
                ),
                verticalSpace(16.h),
                LoginButton(formKey: loginFormKey,),
                verticalSpace(16.h),
                HaveAnAccountWidget(),
                verticalSpace(8),
                Center(
                  child: TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.homeScreen);
                    },
                    child: Text(
                      "تخطى",
                      style: AppStyles.font18PrimaryMedium.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
