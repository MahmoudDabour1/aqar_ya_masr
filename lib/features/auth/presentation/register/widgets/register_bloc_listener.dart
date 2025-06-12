import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/helpers/helper_methods.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (previous, current) =>
          current is RegisterSuccess ||
          current is RegisterFailure ||
          current is RegisterLoading,
      listener: (context, state) {
        final cubit = context.read<AuthCubit>();
        state.whenOrNull(
          registerSuccess: (data) {
            showToast(message: data.message);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
