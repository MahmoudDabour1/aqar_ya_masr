import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/spacing.dart';
import '../../../home/data/models/ad_details_model.dart';
import '../../../home/presentation/widgets/text_with_icon_widget.dart';

class MapAqarDetailsContainer extends StatelessWidget {
  final AdDetailsModel? selectedAd;

  const MapAqarDetailsContainer({super.key, this.selectedAd});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150.h,
      left: 16.w,
      right: 16.w,
      child: GestureDetector(
        onTap: () {
          context.pushNamed(Routes.detailsScreen,
              arguments: selectedAd?.adDetailsData?.ad?.id ?? 0);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: CachedNetworkImage(
                  imageUrl:
                      '${selectedAd?.adDetailsData?.ad?.defaultImage}' ?? "",
                  width: 100.w,
                  // height: 100.h,
                  fit: BoxFit.cover,
                ),
              ),
              horizontalSpace(8),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    verticalSpace(8),
                    Text(
                      "${selectedAd?.adDetailsData?.ad?.price} جنيه",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    if (selectedAd?.adDetailsData?.ad?.title != null)
                      Text(
                        selectedAd?.adDetailsData?.ad?.title ?? '',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: (selectedAd?.adDetailsData?.ad?.barIcon
                              ?.take(3)
                              .map((barIcon) {
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
                          }).toList() ??
                          []), // fallback to empty list
                    ),
                    verticalSpace(8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
