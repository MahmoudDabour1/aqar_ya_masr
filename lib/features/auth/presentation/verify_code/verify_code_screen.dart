import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_button.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/auth/presentation/verify_code/widgets/otp_inputs_widget.dart';
import 'package:aqar_ya_masr/features/auth/presentation/widgets/logo_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyCodeScreen extends StatelessWidget {
  final String phoneNumber;

  const VerifyCodeScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 64.h),
            child: Column(
              children: [
                LogoAndTextWidget(
                  text: "برجاء ادخال رمز التحقق المرسل الى",
                ),
                Text(
                  phoneNumber,
                  style: AppStyles.font18BlackMedium
                      .copyWith(color: AppColors.primaryColor),
                ),
                verticalSpace(32),
                OtpInputWidget(),
                verticalSpace(64),
                AppCustomButton(
                  textButton: "تحقق",
                  btnWidth: MediaQuery.sizeOf(context).width,
                  btnHeight: 50.h,
                  onPressed: () {
                    if (cubit.verifyCodeFormKey.currentState!.validate()) {
                      cubit.verifyCode(context);
                    }
                  },
                ),
                verticalSpace(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "لم تستلم الكود؟",
                      style: AppStyles.font18BlackMedium,
                    ),
                    horizontalSpace(5),
                    Text(
                      "إعادة إرسال",
                      style: AppStyles.font18PrimaryMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
