import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/auth_cubit.dart';

class LoginInputsWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const LoginInputsWidget({super.key, required this.formKey});

  @override
  State<LoginInputsWidget> createState() => _LoginInputsWidgetState();
}

class _LoginInputsWidgetState extends State<LoginInputsWidget> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          verticalSpace(8),
          Text(
            "كلمة المرور",
            style: AppStyles.font18BlackMedium,
          ),
          verticalSpace(8),
          AppTextFormField(
            controller: cubit.passwordController,
            labelText: "أدخل كلمة المرور",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "الرجاء إدخال كلمة المرور";
              }
              if (value.length < 6) {
                return "يجب أن تكون كلمة المرور 6 أحرف على الأقل";
              }
              return null;
            },
            isObscureText: isPasswordVisible,
            suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? SvgPicture.asset(
                      "assets/images/eye_icon.svg",
                      height: 30.h,
                      width: 30.w,
                    )
                  : SvgPicture.asset(
                      "assets/images/eye_icon2.svg",
                      height: 30.h,
                      width: 30.w,
                    ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
          ),
          verticalSpace(8),
        ],
      ),
    );
  }
}
