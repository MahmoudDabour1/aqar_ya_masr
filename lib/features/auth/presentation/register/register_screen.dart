import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/do_you_have_account_widget.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/register_bloc_listener.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/register_button.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/register_check_boxs_widget.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/register_input_widget.dart';
import 'package:aqar_ya_masr/features/auth/presentation/register/widgets/register_logo_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/logo_and_text_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthCubit>().getAppInitData();
  }

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoAndTextWidget(text: "مستخدم جديد",),
              RegisterInputWidget(),
              RegisterCheckBoxsWidget(),
              RegisterButton(),
              verticalSpace(16),
              DoYouHaveAccountWidget(),
              verticalSpace(30),
              RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
