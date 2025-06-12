import 'package:aqar_ya_masr/core/routing/router_observer.dart';
import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpInputWidget extends StatefulWidget {
  const OtpInputWidget({super.key});

  @override
  State<OtpInputWidget> createState() => _OtpInputWidgetState();
}

class _OtpInputWidgetState extends State<OtpInputWidget> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  String get otp => _controllers.map((c) => c.text).join();

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
    if (_controllers.every((c) => c.text.isNotEmpty)) {
      context.read<AuthCubit>().verifyCodeNumber = otp.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Form(
        key: context.read<AuthCubit>().verifyCodeFormKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) {
              return Expanded(
                child: Container(
                  height: 50.h,
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextFormField(
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    style: AppStyles.font18BlackBold
                        .copyWith(color: AppColors.primaryColor),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.fillColor,
                      counterText: '',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                    onChanged: (value) {
                      _onChanged(value, index);
                      logger.w('OTP Input $index: $value');
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
