import 'package:aqar_ya_masr/features/home/presentation/widgets/text_with_icon_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class ListViewItemWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;
  final List<dynamic> barIcons;
  final bool isAqarMomayas;

  const ListViewItemWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.price,
    required this.barIcons,
    this.isAqarMomayas = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width - 50.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
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
            Text(title,
                style: AppStyles.font16BlackMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 1),
            verticalSpace(8),
            Text(
              description,
              style: AppStyles.font16GrayLight,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            verticalSpace(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: barIcons.take(3).map((barIcon) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(barIcon.label ?? ''),
                    verticalSpace(4),
                    TextWithIconWidget(
                      text: barIcon.value.toString(),
                      iconPath: barIcon.icon ?? '',
                    ),
                  ],
                );
              }).toList(),
            ),
            verticalSpace(8),
            Text(
              "$price جنيه",
              style: AppStyles.font16BlackMedium.copyWith(
                color: isAqarMomayas
                    ? AppColors.goldColor
                    : AppColors.primaryColor,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
