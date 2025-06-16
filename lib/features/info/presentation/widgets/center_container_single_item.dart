import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class CenterContainerSingleItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onPress;
  const CenterContainerSingleItem({super.key, required this.iconPath, required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
              iconPath),
          verticalSpace(8),
          Text(
            label,
            style: AppStyles.font14BlackLight,
          ),
        ],
      ),
    );
  }
}
