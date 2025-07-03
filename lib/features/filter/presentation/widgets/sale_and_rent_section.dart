import 'package:aqar_ya_masr/features/filter/logic/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/spacing.dart';
import 'sale_and_rent_item.dart';

class SaleAndRentSection extends StatefulWidget {
  const SaleAndRentSection({super.key});

  @override
  State<SaleAndRentSection> createState() => _SaleAndRentSectionState();
}

class _SaleAndRentSectionState extends State<SaleAndRentSection> {
  SalesAndRentOption selectedOption = SalesAndRentOption.none;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FilterCubit>();
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SaleAndRentItem(
          onPress: () {
            setState(() {
              selectedOption = SalesAndRentOption.sale;
              cubit.contractType = "sale";
            });
          },
          isSelected: selectedOption == SalesAndRentOption.sale,
          option: SalesAndRentOption.sale,
          selectedOption: selectedOption,
          onOptionSelected: (opt) {
            setState(() {
              selectedOption = opt;
              cubit.contractType = "sale";
            });
          },
          text: 'للبيع',
        ),
        horizontalSpace(8),
        SaleAndRentItem(
          onPress: () {
            setState(() {
              selectedOption = SalesAndRentOption.rent;
              cubit.contractType = "rent";
            });
          },
          isSelected: selectedOption == SalesAndRentOption.rent,
          option: SalesAndRentOption.rent,
          selectedOption: selectedOption,
          onOptionSelected: (opt) {
            setState(() {
              selectedOption = opt;
              cubit.contractType = "rent";
            });
          },
          text: 'للايجار',
        ),
      ],
    );
  }
}

enum SalesAndRentOption { none, sale, rent }
