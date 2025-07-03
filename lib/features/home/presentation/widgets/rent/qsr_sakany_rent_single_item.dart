import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../data/models/rent/qsr_sakany_rent_model.dart';
import '../../all_aqars_screen.dart';
import '../all_aqar_button.dart';
import '../list_view_item_widget.dart';

class QsrSakanyRentSingleItem extends StatelessWidget {
  final QsrSakanyRentModel qsrSakanyModel;

  const QsrSakanyRentSingleItem({super.key, required this.qsrSakanyModel});

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
                "قصر سكنى",
                style: AppStyles.font18BlackBold,
              ),
              const Spacer(),
              AllAqarButton(
                navigationTarget: AllAqarScreen(
                  aqarType: AqarType.qsrSakanyRent,
                  appBatTitle: "قصر سكنى",
                ),
              ),
            ],
          ),
        ),
        verticalSpace(8),
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: SizedBox(
            height: 360.h,
            child: ListView.builder(
                itemCount: qsrSakanyModel.data?.ads?.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.detailsScreen,
                            arguments: qsrSakanyModel.data?.ads?[index].id);
                      },
                      child: ListViewItemWidget(
                        barIcons:
                            qsrSakanyModel.data?.ads?[index].barIcon ?? [],
                        title: qsrSakanyModel.data?.ads?[index].title ?? '',
                        imageUrl:
                            qsrSakanyModel.data?.ads?[index].defaultImage ?? '',
                        description:
                            qsrSakanyModel.data?.ads?[index].description ?? '',
                        price: qsrSakanyModel.data?.ads?[index].price ?? '',
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
