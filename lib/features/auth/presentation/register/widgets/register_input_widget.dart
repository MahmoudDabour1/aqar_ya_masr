import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/register_drop_down_city_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class RegisterInputWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const RegisterInputWidget({super.key, required this.formKey});

  @override
  State<RegisterInputWidget> createState() => _RegisterInputWidgetState();
}

class _RegisterInputWidgetState extends State<RegisterInputWidget> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "اسم المستخدم",
            style: AppStyles.font18BlackMedium,
          ),
          verticalSpace(8),
          AppTextFormField(
            controller: cubit.nameController,
            labelText: "أدخل اسم المستخدم",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "الرجاء إدخال اسم المستخدم";
              }
              return null;
            },
          ),
          verticalSpace(8),
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
          Text(
            "تأكيد كلمة المرور",
            style: AppStyles.font18BlackMedium,
          ),
          verticalSpace(8),
          AppTextFormField(
            labelText: "أدخل تأكيد كلمة المرور",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "الرجاء إدخال تأكيد كلمة المرور";
              }
              if (value != cubit.passwordController.text) {
                return "كلمة المرور وتأكيدها غير متطابقين";
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
          verticalSpace(16),
          RegisterDropDownCityWidget(),
        ],
      ),
    );
  }
}
