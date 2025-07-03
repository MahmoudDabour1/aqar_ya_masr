import 'package:aqar_ya_masr/features/filter/logic/filter_cubit.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/price_container_item.dart';
import 'package:aqar_ya_masr/features/filter/presentation/widgets/price_filter_range_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/spacing.dart';
import '../../../home/data/models/app_init_model.dart';

class PriceSection extends StatefulWidget {
  const PriceSection({super.key});

  @override
  State<PriceSection> createState() => _PriceSectionState();
}

class _PriceSectionState extends State<PriceSection> {
  double minLimit = 0;
  double maxLimit = 1000000; // fallback max
  RangeValues selectedRange = const RangeValues(0, 1000000);

  Future<void> _loadData() async {
    final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
    final appInitData = appInitBox.get(kAppInitData);
    final loadedMaxPrice = appInitData?.data?.maxPrice;
    if (loadedMaxPrice != null) {
      final loadedMax = double.tryParse(loadedMaxPrice.toString()) ?? 1000000;
      setState(() {
        maxLimit = loadedMax;
        selectedRange = RangeValues(minLimit, loadedMax);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FilterCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16),
        Text(
          "السعر",
          style: AppStyles.font18BlackMedium,
        ),
        verticalSpace(16),
        PriceFilterRangeWidget(
          minLimit: minLimit,
          maxLimit: maxLimit,
          currentRange: selectedRange,
          onChanged: (value) {
            setState(() {
              selectedRange = value;
              cubit.minPrice = value.start;
              cubit.maxPrice = value.end;

            });
          },
        ),
        Row(
          children: [
            PriceContainerItem(
              price: selectedRange.start.toInt().toString(),
              aboveTitle: "السعر من",
            ),
            horizontalSpace(8),
            PriceContainerItem(
              price: selectedRange.end.toInt().toString(),
              aboveTitle: "السعر إلى",
            ),
          ],
        ),
        verticalSpace(16),
        Divider(),
      ],
    );
  }
}
