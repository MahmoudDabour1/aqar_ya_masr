
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../../../core/widgets/app_text_form_field.dart';


class RegisterDropDownCityWidget extends StatelessWidget {
  const RegisterDropDownCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "المحافظة",
          style: AppStyles.font18BlackMedium,
        ),
        verticalSpace(8),
        AppTextFormField(
          labelText: "اختار المحافظة",
          controller: cubit.cityController,
          validator: (value) {
            if (value.isEmpty) {
              return "الرجاء اختيار المحافظة";
            }
            return null;
          },
          readOnly: true,
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 30.r,
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.vertical(top: Radius.circular(0.r)),
              ),
              builder: (context) {
                return SizedBox(
                  height: 500.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalSpace(16),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: cubit.cities.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Center(child: Text(cubit.cities[index].name ?? "")),
                              onTap: () {
                                cubit.cityId =
                                    cubit.cities[index].id.toString();
                                cubit.cityController.text =
                                    cubit.cities[index].name.toString();
                                Navigator.pop(context);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
        verticalSpace(16),
      ],
    );
  }
}
