import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_search_text_field.dart';

class TapBarWidget extends StatelessWidget {
  final TabController tapController;

  const TapBarWidget({super.key, required this.tapController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          verticalSpace(16),
          AppCustomSearchTextField(
            controller: TextEditingController(),
            onFieldSubmitted: (value) {
              // context
              //     .read<SearchCubit>()
              //     .searchController
              //     .text = value.toString();
              context.pushNamed(Routes.searchScreen, arguments: value);
            },
            // onSaved: (value) {
            //
            //   context.pushNamed(Routes.searchScreen);
            // },
          ),
          verticalSpace(16),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: TabBar(
              controller: tapController,
              automaticIndicatorColorAdjustment: true,
              physics: const BouncingScrollPhysics(),
              isScrollable: false,
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              padding: EdgeInsets.only(bottom: 16.h),
              indicator: BoxDecoration(
                color: AppColors.fillColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/sale_blue.svg"),
                      horizontalSpace(8),
                      Text(
                        "للبيع",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/rent_blue.svg"),
                      horizontalSpace(8),
                      Text(
                        "للإيجار",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              labelColor: AppColors.primaryColor,
              unselectedLabelColor: Colors.grey,
              // Optional: for unselected tabs
              indicatorColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
