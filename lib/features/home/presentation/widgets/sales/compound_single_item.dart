import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../data/models/sale/compound_model.dart';
import '../../all_aqars_screen.dart';
import '../all_aqar_button.dart';
import '../list_view_item_widget.dart';

class CompoundSingleItem extends StatelessWidget {
  final CompoundModel compoundModel;

  const CompoundSingleItem({
    super.key,
    required this.compoundModel,
  });

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
                "كومبوندات",
                style: AppStyles.font18BlackBold,
              ),
              const Spacer(),
              AllAqarButton(
                navigationTarget: AllAqarScreen(
                  aqarType: AqarType.compound,
                  appBatTitle: "كومبوندات",
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
              itemCount:  compoundModel.data?.ads?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.detailsScreen,
                          arguments: compoundModel.data?.ads?[index].id);
                    },
                    child: ListViewItemWidget(
                      price: compoundModel.data?.ads?[index].price ?? "",
                      barIcons: compoundModel.data?.ads?[index].barIcon ?? [],
                      title: compoundModel.data?.ads?[index].title ?? "",
                      imageUrl:
                          compoundModel.data?.ads?[index].defaultImage ?? "",
                      description:
                          compoundModel.data?.ads?[index].description ?? "",
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
