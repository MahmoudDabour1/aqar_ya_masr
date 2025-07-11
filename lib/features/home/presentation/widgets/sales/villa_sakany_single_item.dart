import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../data/models/sale/villa_sakany_model.dart';
import '../../all_aqars_screen.dart';
import '../all_aqar_button.dart';
import '../list_view_item_widget.dart';

class VillaSakanySingleItem extends StatelessWidget {
  final VillaSakanyModel villaSakanyModel;

  const VillaSakanySingleItem({super.key, required this.villaSakanyModel});

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
                "فيلا سكنية",
                style: AppStyles.font18BlackBold,
              ),
              const Spacer(),
              AllAqarButton(
                navigationTarget: AllAqarScreen(
                  aqarType: AqarType.villaSakany,
                  appBatTitle: "فيلا سكنية",
                ),
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
              itemCount: villaSakanyModel.villaData?.ads?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final villaData = villaSakanyModel.villaData?.ads?[index];
                return Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.detailsScreen,
                          arguments: villaData?.id);
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
