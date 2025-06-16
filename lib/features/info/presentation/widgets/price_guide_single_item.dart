import 'package:aqar_ya_masr/features/info/data/models/price_guide_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class PriceGuideSingleItem extends StatelessWidget {
  final PriceGuideModel priceGuideModel;

  const PriceGuideSingleItem({
    super.key,
    required this.priceGuideModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: priceGuideModel.data?.districts?.length,
        itemBuilder: (context, index) {
          final model = priceGuideModel.data?.districts?[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: CachedNetworkImage(
                  imageUrl: model?.districtImage != null
                      ? "https://aqaryamasr.com${model?.districtImage}"
                      : "https://img.freepik.com/free-photo/luxury-plain-green-gradient-abstract-studio-background-empty-room-with-space-your-text-picture_1258-88714.jpg",
                  width: MediaQuery.sizeOf(context).width,
                  height: 180.h,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    size: 50.h,
                    color: Colors.red,
                  ),
                  placeholder: (context, url) => Center(
                    child: SvgPicture.asset("assets/images/loader.gif"),
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpace(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    model?.districtName ?? "",
                    style: AppStyles.font18BlackBold,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/ic_location_blue.svg",
                        width: 25.w,
                        height: 25.h,
                      ),
                      horizontalSpace(8),
                      Text(
                        model?.cityName ?? "",
                        style: AppStyles.font18BlackMedium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(8),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_price_down.svg",
                    width: 30.w,
                    height: 30.h,
                  ),
                  horizontalSpace(8),
                  Text(
                    "أقل سعر للمتر : ${model?.minPrice} جنيه ",
                    style: AppStyles.font16grayRegular,
                  )
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_price_up.svg",
                    width: 30.w,
                    height: 30.h,
                  ),
                  horizontalSpace(8),
                  Text(
                    "أعلى سعر للمتر : ${model?.maxPrice} جنيه ",
                    style: AppStyles.font16grayRegular,
                  )
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/ic_price_avg.svg",
                    width: 30.w,
                    height: 30.h,
                  ),
                  horizontalSpace(8),
                  Text(
                    "أعلى سعر للمتر : ${model?.avgPrice} جنيه ",
                    style: AppStyles.font16grayRegular.copyWith(
                      color: AppColors.blackColor,
                    ),
                  )
                ],
              ),
              verticalSpace(16),
            ],
          );
        });
  }
}
