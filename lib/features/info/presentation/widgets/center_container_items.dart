import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/home/presentation/all_aqars_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import 'center_container_single_item.dart';

class CenterContainerItems extends StatelessWidget {
  const CenterContainerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CenterContainerSingleItem(
          iconPath: "assets/icons/ic_office_building.svg",
          label: "كومبوندات",
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AllAqarScreen(
                  model: "CompoundModel",
                  appBatTitle: "كومبوندات",
                ),
              ),
            );
          },
        ),
        Container(
          width: 1.w, // Thin vertical line
          height: 45.h, // Adjust as needed
          color: AppColors.grayColor,
        ),
        CenterContainerSingleItem(
          iconPath: "assets/icons/ic_line_chart.svg",
          label: "دليل الأسعار",
          onPress: () {
            context.pushNamed(Routes.priceGuideScreen);
          },
        ),
        Container(
          width: 1.w, // Thin vertical line
          height: 45.h, // Adjust as needed
          color: AppColors.grayColor,
        ),
        CenterContainerSingleItem(
          iconPath: "assets/icons/ic_bookmark.svg",
          label: "المقالات العقارية",
          onPress: () {},
        ),
      ],
    );
  }
}
