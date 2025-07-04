import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/features/home/presentation/all_aqars_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/sale/aqar_momayas_model.dart';
import '../all_aqar_button.dart';
import '../list_view_item_widget.dart';

class AqarMomayasSingleItem extends StatelessWidget {
  final AqarMomayasModel aqarMomayas;

  const AqarMomayasSingleItem({super.key, required this.aqarMomayas});

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
                "العقارات المميزه",
                style: AppStyles.font18BlackBold,
              ),
              const Spacer(),
              AllAqarButton(
                navigationTarget: AllAqarScreen(
                  aqarType: AqarType.aqarMomayas,
                  appBatTitle: "العقارات المميزه",
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
              itemCount:  aqarMomayas.data?.ads?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.detailsScreen,
                          arguments: aqarMomayas.data?.ads?[index].id);
                    },
                    child: ListViewItemWidget(
                      price: aqarMomayas.data?.ads?[index].price ?? "",
                      barIcons: aqarMomayas.data?.ads?[index].barIcon ?? [],
                      title: aqarMomayas.data?.ads?[index].title ?? "",
                      imageUrl:
                          aqarMomayas.data?.ads?[index].defaultImage ?? "",
                      description:
                          aqarMomayas.data?.ads?[index].description ?? "",
                      isAqarMomayas: true,
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
