import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/theming/app_styles.dart';

class AqarNumberAndDateWidget extends StatelessWidget {
  final AdDetailsModel adDetailsModel;

  const AqarNumberAndDateWidget({super.key, required this.adDetailsModel});

  String formatDate(String? dateStr) {
    if (dateStr == null) return "تاريخ غير متاح";

    try {
      final DateTime dateTime = DateTime.parse(dateStr);
      return "تاريخ نشر الإعلان ${DateFormat('dd-MM-yyyy').format(dateTime)} ";
    } catch (e) {
      return "تاريخ غير صالح";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          formatDate(
            adDetailsModel.adDetailsData?.ad?.publishAt.toString(),
          ),
          style: AppStyles.font16grayRegular,
        ),
        Text(
          "رقم العقار: ${adDetailsModel.adDetailsData?.ad?.id}",
          style: AppStyles.font16grayRegular.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
