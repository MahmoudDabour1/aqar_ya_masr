import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../text_with_icon_widget.dart';

class AqarContentWidget extends StatelessWidget {
  final AdDetailsModel adDetailsModel;

  const AqarContentWidget({super.key, required this.adDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "محتوى العقار",
          style: AppStyles.font18BlackMedium,
        ),
        verticalSpace(8),
        SizedBox(
          height: adDetailsModel.adDetailsData!.ad!.barIcon!.length > 3?180.h:100.h,
          child: GridView.builder(
            itemCount: adDetailsModel.adDetailsData?.ad?.barIcon?.length ?? 0,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 8.w,
                mainAxisSpacing: 8.h,
                mainAxisExtent: 80.h),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return contentGridViewItem(index);
            },
          ),
        ),
      ],
    );
  }

  Widget contentGridViewItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(adDetailsModel.adDetailsData?.ad?.barIcon?[index].label ?? ''),
          verticalSpace(4),
          TextWithIconWidget(
            text: (adDetailsModel.adDetailsData?.ad?.barIcon?[index].value)
                .toString(),
            iconPath:
                adDetailsModel.adDetailsData?.ad?.barIcon?[index].icon ?? '',
          ),
        ],
      ),
    );
  }
}
