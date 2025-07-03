import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/app_custom_button.dart';
import '../../../logic/auth_state.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return AppCustomButton(
          isLoading:state is LogineLoading,
          textButton: "تسجيل",
          btnWidth: MediaQuery
              .sizeOf(context)
              .width,
          btnHeight: 50.h,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              cubit.login(context);
            }
          },
        );
      },
    );
  }
}
