import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/utils/spacing.dart';

class DetailsImagesWidget extends StatefulWidget {
  final AdDetailsModel adModel;

  const DetailsImagesWidget({super.key, required this.adModel});

  @override
  State<DetailsImagesWidget> createState() => _DetailsImagesWidgetState();
}

class _DetailsImagesWidgetState extends State<DetailsImagesWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.adModel.adDetailsData?.ad?.images
                  ?.map((image) => CachedNetworkImage(
                        imageUrl: 'https://aqaryamasr.com$image' ?? "",
                        width: double.infinity,
                        height: 300.h,
                        fit: BoxFit.fill,
                      ))
                  .toList() ??
              [],
          options: CarouselOptions(
            height: 300.h,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/share_icon.svg",
                    height: 35.h,
                    width: 35.w,
                  ),
                  horizontalSpace(8.w),
                  SvgPicture.asset(
                    "assets/images/report.svg",
                    height: 35.h,
                    width: 35.w,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => context.pop(),
                child: SvgPicture.asset(
                  "assets/images/back_icon.svg",
                  height: 35.h,
                  width: 35.w,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 8.h,
          left: MediaQuery.sizeOf(context).width / 2 - 50.w,
          child: Row(
            children: List.generate(
              widget.adModel.adDetailsData?.ad?.images?.length ?? 0,
              (index) {
                return Container(
                  width: 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 8.h),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? AppColors.primaryColor
                        : AppColors.grayColor,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
