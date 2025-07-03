import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_search_text_field.dart';
import 'filter_taps_list.dart';

class MapHeader extends StatelessWidget {
  const MapHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        color: AppColors.primaryColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppCustomSearchTextField(),
            verticalSpace(8),
            const FilterTapsList(),
          ],
        ),
      ),
    );
  }
}
