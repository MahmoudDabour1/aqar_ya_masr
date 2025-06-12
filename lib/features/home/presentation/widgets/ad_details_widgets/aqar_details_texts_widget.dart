import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../text_with_icon_widget.dart';
import 'aqar_number_and_date_widget.dart';
import 'aqar_publisher_data_widget.dart';
import 'aqar_title_and_price_widget.dart';

class AqarDetailsTextsWidget extends StatelessWidget {
  final AdDetailsModel adModel;
  const AqarDetailsTextsWidget({super.key, required this.adModel});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AqarNumberAndDateWidget(
            adDetailsModel: adModel,
          ),
          AqarTextDetailsWidget(
            adDetailsModel: adModel,
          ),
          Text(
            "المرافق",
            style: AppStyles.font18BlackMedium,
          ),
          verticalSpace(8),
          SizedBox(
            height: 240.h,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: adModel.adDetailsData?.ad?.propertyData?.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 4.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWithIconWidget(
                              text: adModel.adDetailsData?.ad
                                  ?.propertyData?[index].label ??
                                  "",
                              iconPath: adModel.adDetailsData?.ad
                                  ?.propertyData?[index].icon ??
                                  "",
                              iconSize: 20.w,
                              textSize: 16.sp,
                              textColor: AppColors.blackColor,
                            ),
                            Text(
                              adModel.adDetailsData?.ad
                                  ?.propertyData?[index].value ==
                                  "1"
                                  ? "نعم"
                                  : "لا",
                              style: AppStyles.font18BlackMedium.copyWith(
                                color: adModel.adDetailsData?.ad
                                    ?.propertyData?[index].value ==
                                    "1"
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: AppColors.grayColor,
                        thickness: 1,
                      ),
                    ],
                  );
                }),
          ),
          AqarPublisherDataWidget(
            adDetailsModel: adModel,
          ),
        ],
      ),
    );
  }
}
