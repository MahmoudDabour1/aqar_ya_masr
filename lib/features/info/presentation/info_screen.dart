import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/aqarty_container_widget.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/more_services_container_widget.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/user_image_and_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            UserImageAndDataWidget(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AqartyContainerWidget(),
                      verticalSpace(10),
                      MoreServicesContainerWidget(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
