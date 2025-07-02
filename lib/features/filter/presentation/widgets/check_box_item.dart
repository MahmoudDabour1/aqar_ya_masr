import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';

class CheckBoxItem extends StatelessWidget {
  final String? selectedId;
  final List<dynamic> items;
  final Function(String id) onSelect;

  const CheckBoxItem(
      {super.key,
      required this.selectedId,
      required this.items,
      required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        (items.length / 2).ceil(),
        (rowIndex) {
          int firstIndex = rowIndex * 2;
          int secondIndex = firstIndex + 1;

          return Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox.adaptive(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: selectedId == items[firstIndex].id.toString(),
                      onChanged: (_) =>
                          onSelect(items[firstIndex].id.toString()),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        items[firstIndex].name ?? "",
                        style: AppStyles.font18BlackMedium,
                      ),
                    ),
                  ],
                ),
              ),
              if (secondIndex < items.length)
                Expanded(
                  child: Row(
                    children: [
                      Checkbox.adaptive(
                        value: selectedId == items[secondIndex].id.toString(),
                        onChanged: (_) =>
                            onSelect(items[secondIndex].id.toString()),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          items[secondIndex].name ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.font18BlackMedium,
                        ),
                      ),
                    ],
                  ),
                )
              else
                const Expanded(child: SizedBox()),
            ],
          );
        },
      ),
    );
  }
}
