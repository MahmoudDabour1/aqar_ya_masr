import 'package:aqar_ya_masr/core/widgets/app_custom_app_bar.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/edit_user_data_buttons_widget.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/edit_user_data_image_widget.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/edit_user_data_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/profile_data_model.dart';

class EditUserDataScreen extends StatefulWidget {
  final ProfileDataModel profileDataModel;

  const EditUserDataScreen({super.key, required this.profileDataModel});

  @override
  State<EditUserDataScreen> createState() => _EditUserDataScreenState();
}

class _EditUserDataScreenState extends State<EditUserDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(appBatTitle: "الاعدادات"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditUserDataImageWidget(profileDataModel: widget.profileDataModel,),
              EditUserDataInputs(profileDataModel: widget.profileDataModel,),
              EditUserDataButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
