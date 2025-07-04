import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/list_view_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';
import '../../../data/models/sale/qsr_sakany_model.dart';
import '../../all_aqars_screen.dart';
import '../all_aqar_button.dart';

class QsrSakanySingleItem extends StatelessWidget {
  final QsrSakanyModel qsrSakanyModel;

  const QsrSakanySingleItem({super.key, required this.qsrSakanyModel});

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
                  aqarType: AqarType.qsrSakany,
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
                itemCount: qsrSakanyModel.qsrData?.ads?.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.detailsScreen,
                            arguments: qsrSakanyModel.qsrData?.ads?[index].id);
                      },
                      child: ListViewItemWidget(
                        barIcons:
                            qsrSakanyModel.qsrData?.ads?[index].barIcon ?? [],
                        title: qsrSakanyModel.qsrData?.ads?[index].title ?? '',
                        imageUrl:
                            qsrSakanyModel.qsrData?.ads?[index].defaultImage ??
                                '',
                        description:
                            qsrSakanyModel.qsrData?.ads?[index].description ??
                                '',
                        price: qsrSakanyModel.qsrData?.ads?[index].price ?? '',
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
