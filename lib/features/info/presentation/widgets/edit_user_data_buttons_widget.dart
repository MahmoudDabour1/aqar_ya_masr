import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';

class EditUserDataButtonsWidget extends StatelessWidget {
  const EditUserDataButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        AppCustomButton(
          textButton: "حفظ التغييرات",
          btnWidth: MediaQuery.sizeOf(context).width,
          btnHeight: 50.h,
          onPressed: () {},
        ),
        verticalSpace(16),
        Center(
          child: TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              "إلغاء",
              style: AppStyles.font18PrimaryMedium,
            ),
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
