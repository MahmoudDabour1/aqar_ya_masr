import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_app_bar.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_button.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/aqar_types_check_box_section.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/city_and_districts_bottom_sheets.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/created_date_section.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/price_section.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/sale_and_rent_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(appBatTitle: "التصفية"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SaleAndRentSection(),
                CityAndDistrictsBottomSheets(),
                AqarTypesCheckBoxSection(),
                PriceSection(),
                CreatedDateSection(),
                AppCustomButton(
                  textButton: "بحث",
                  btnHeight: 70.h,
                  onPressed: () {
                    context.pushNamed(Routes.filterResponseScreen);
                  },
                ),
                verticalSpace(16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
