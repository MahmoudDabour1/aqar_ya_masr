import 'package:aqar_ya_masr/features/filter/presentation/widgets/sale_and_rent_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';



class SaleAndRentItem extends StatelessWidget {
  final VoidCallback onPress;
  final bool isSelected;
  final SalesAndRentOption selectedOption;
  final SalesAndRentOption option;
  final Function(SalesAndRentOption) onOptionSelected;
  final String text;

  const SaleAndRentItem({
    super.key,
    required this.onPress,
    required this.isSelected,
    required this.selectedOption,
    required this.onOptionSelected,
    required this.text, required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.fillColor : Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox.adaptive(
                value: selectedOption==option,
                onChanged: (value) {
                  if (value == true) {
                    onOptionSelected(option);
                  } else {
                    onOptionSelected(SalesAndRentOption.none);
                  }
                },
                visualDensity: VisualDensity.comfortable,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              Text(
                text,
                style: AppStyles.font16whiteMedium.copyWith(
                  color:
                      isSelected ? AppColors.blackColor : AppColors.grayColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
