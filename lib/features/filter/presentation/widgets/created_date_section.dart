import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import 'check_box_item.dart';

class CreatedDateSection extends StatefulWidget {
  const CreatedDateSection({super.key});

  @override
  State<CreatedDateSection> createState() => _CreatedDateSectionState();
}

class _CreatedDateSectionState extends State<CreatedDateSection> {
  List<Map<String, String>> selectedDate = [
    {"id": "1", "name": "الكل"},
    {"id": "2", "name": "اليوم"},
    {"id": "3", "name": "اخر اسبوع"},
    {"id": "4", "name": "اخر شهر"},
  ];

  String? selectedDateOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16.h),
        Text(
          "تاريخ الإضافة",
          style: AppStyles.font18BlackMedium,
        ),
        verticalSpace(8.h),
        CheckBoxItem(
          items: selectedDate
              .map((e) => (
                    id: e["id"]!,
                    name: e["name"]!,
                  ))
              .toList(),
          onSelect: (id) {
            if (selectedDateOption == id) {
              setState(() {});
              return;
            }
            setState(() {
              selectedDateOption = id;
            });
          },
          selectedId: selectedDateOption,
        ),
        verticalSpace(16),
      ],
    );
  }
}
