import 'package:aqar_ya_masr/features/info/presentation/widgets/edit_user_data_bottom_sheet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../data/models/profile_data_model.dart';

class EditUserDataInputs extends StatefulWidget {
  final ProfileDataModel? profileDataModel;

  const EditUserDataInputs({super.key, required this.profileDataModel});

  @override
  State<EditUserDataInputs> createState() => _EditUserDataInputsState();
}

class _EditUserDataInputsState extends State<EditUserDataInputs> {
  final TextEditingController _nameController = TextEditingController(
  );
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.profileDataModel != null) {
      _nameController.text = widget.profileDataModel!.data!.profile!.name ?? '';
      _phoneController.text = widget.profileDataModel!.data!.profile!.phone ?? '';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel("اسم المستخدم"),
        AppTextFormField(
          controller: _nameController,
          labelText: "أدخل اسم المستخدم",
          validator: (value) => (value == null || value.isEmpty)
              ? "الرجاء إدخال اسم المستخدم"
              : null,
        ),
        verticalSpace(8),
        _buildLabel("رقم الهاتف"),
        AppTextFormField(
          controller: _phoneController,
          labelText: "أدخل رقم الهاتف",
          validator: (value) => (value == null || value.isEmpty)
              ? "الرجاء إدخال رقم الهاتف"
              : null,
        ),
        verticalSpace(8),
        _buildLabel("تغيير كلمة المرور"),
        AppTextFormField(
          controller: _passwordController,
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
          // isObscureText: true,
        ),
        verticalSpace(8),
        _buildLabel("المحافظة"),
        EditUserDataBottomSheetWidget(),
        verticalSpace(16),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: AppStyles.font18BlackMedium),
        verticalSpace(8),
      ],
    );
  }
}
