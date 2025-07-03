import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/helper_methods.dart';
import '../../../../../core/widgets/app_custom_button.dart';
import '../../../logic/auth_cubit.dart';
import '../../../logic/auth_state.dart';

class RegisterButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const RegisterButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return AppCustomButton(
          textButton: "تسجيل",
          isLoading: state is RegisterLoading,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              if (cubit.registerAcceptedTerms == true) {
                context.read<AuthCubit>().register(context);
              } else {
                showToast(message: "يرجي الموافقة على الشروط والأحكام");
              }
            }
          },
          btnWidth: MediaQuery.sizeOf(context).width,
          btnHeight: 50.h,
        );
      },
    );
  }
}
