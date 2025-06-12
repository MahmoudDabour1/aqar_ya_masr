import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class AqarPublisherDataWidget extends StatelessWidget {
  final AdDetailsModel adDetailsModel;

  const AqarPublisherDataWidget({super.key, required this.adDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16),
        Text(
          "ناشر الإعلان",
          style: AppStyles.font18BlackMedium,
        ),
        verticalSpace(16),
        Row(
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage:
                  adDetailsModel.adDetailsData?.ad?.owner?.image == null
                      ? AssetImage('assets/images/user_placeholder.png')
                      : NetworkImage(
                          adDetailsModel.adDetailsData?.ad?.owner?.image,
                        ),
            ),
            horizontalSpace(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  adDetailsModel.adDetailsData?.ad?.owner?.name ?? "",
                  style: AppStyles.font18BlackBold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  adDetailsModel.adDetailsData?.ad?.owner?.phone ?? "",
                  style: AppStyles.font16grayRegular,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
