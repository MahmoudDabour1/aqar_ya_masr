import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';
import '../../../../../core/utils/spacing.dart';
import 'aqar_content_widget.dart';
import 'aqar_location_widget.dart';

class AqarTextDetailsWidget extends StatelessWidget {
  final AdDetailsModel adDetailsModel;

  const AqarTextDetailsWidget({super.key, required this.adDetailsModel});

  @override
  Widget build(BuildContext context) {
    final adModel = adDetailsModel.adDetailsData?.ad;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(8),
        Text(
          adModel?.title ?? "",
          style: AppStyles.font16BlackMedium,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        verticalSpace(16),
        Text(
          "جنيه${adModel?.price??""}",
          style: AppStyles.font16BlackMedium.copyWith(
            color: AppColors.goldColor,
            fontWeight: FontWeightHelper.semiBold,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        verticalSpace(16),


        Row(
          children: [
            SvgPicture.asset(
              "assets/images/location.svg",
              width: 25.w,
              height: 25.h,
            ),
            horizontalSpace(8),
            Expanded(
              child: Text(
                "${adModel?.city}/${adModel?.district}",
                style: AppStyles.font16GrayLight,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
        verticalSpace(16),
        AqarContentWidget(adDetailsModel: adDetailsModel,),

        verticalSpace(16),
        Text(
          "موقع العقار",
          style: AppStyles.font16BlackMedium,
        ),
        verticalSpace(8),
        AqarLocationWidget(adModel: adDetailsModel,),

        Text(
          "الوصف",
          style: AppStyles.font16BlackMedium,
        ),
        verticalSpace(8),
        Text(
          adModel?.description??"",
          style: AppStyles.font16grayRegular,
        ),
        verticalSpace(16),
        Text(
          "العنوان بالتفصيل",
          style: AppStyles.font16BlackMedium,
        ),
        verticalSpace(8),
        Text(
          adModel?.address??"",
          style: AppStyles.font16grayRegular,
        ),
        verticalSpace(16),
        Text(
          "اكثر ما يميز العقار",
          style: AppStyles.font16BlackMedium,
        ),
        verticalSpace(8),
        Text(
          adModel?.featuredDescrip??"",
          style: AppStyles.font16grayRegular,
        ),
        verticalSpace(16),
      ],
    );
  }
}
