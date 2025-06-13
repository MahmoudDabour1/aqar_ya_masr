import 'package:aqar_ya_masr/core/widgets/app_custom_button.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/auth/presentation/widgets/logo_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 35.r,
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 32.h),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LogoAndTextWidget(text: "نسيت كلمة المرور؟"),
                  verticalSpace(16),
                  Text(
                    "رقم الهاتف",
                    style: AppStyles.font18BlackMedium,
                  ),
                  verticalSpace(8),
                  AppTextFormField(
                    controller: cubit.phoneController,
                    labelText: "أدخل رقم الهاتف",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "الرجاء إدخال رقم الهاتف";
                      }
                      return null;
                    },
                  ),
                  verticalSpace(32),
                  Center(
                    child: AppCustomButton(
                        textButton: "إرسال",
                        btnWidth: 180.w,
                        btnHeight: 50.h,
                        onPressed: () {
                          cubit.isFromForgetPassword = true;
                          if (formKey.currentState!.validate()) {
                            cubit.forgetPassword(context);
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
