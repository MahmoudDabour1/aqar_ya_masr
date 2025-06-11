import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/features/home/data/models/flat_sakany_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../list_view_item_widget.dart';

class FlatSakanySingleModel extends StatelessWidget {
  final FlatSakanyModel flatSakanyModel;

  const FlatSakanySingleModel({super.key, required this.flatSakanyModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Text(
                "شقة سكنية",
                style: AppStyles.font18BlackBold,
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "الكل",
                    style: AppStyles.font16BlackMedium,
                  ),
                  horizontalSpace(6),
                  SvgPicture.asset(
                    "assets/images/left_arrow.svg",
                    height: 25.h,
                    width: 25.w,
                  ),
                ],
              ),
            ],
          ),
        ),
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: SizedBox(
            height: 360.h,
            child: ListView.builder(
              itemCount: flatSakanyModel.flatData?.ads?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final villaData = flatSakanyModel.flatData?.ads?[index];
                return Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.detailsScreen,
                          arguments: flatSakanyModel.flatData?.ads?[index].id);
                    },
                    child: ListViewItemWidget(
                      price: villaData?.price ?? "",
                      barIcons: villaData?.barIcon ?? [],
                      title: villaData?.title ?? "",
                      imageUrl: villaData?.defaultImage ?? "",
                      description: villaData?.description ?? "",
                    ),
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
