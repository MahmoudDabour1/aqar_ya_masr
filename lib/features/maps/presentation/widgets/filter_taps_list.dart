import 'package:aqar_ya_masr/features/maps/logic/maps_cubit.dart';
import 'package:aqar_ya_masr/features/maps/presentation/widgets/filter_tap_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../home/data/models/app_init_model.dart';

class FilterTapsList extends StatefulWidget {
  const FilterTapsList({super.key});

  @override
  State<FilterTapsList> createState() => _FilterTapsListState();
}

class _FilterTapsListState extends State<FilterTapsList> {
  int selectedTabIndex = 0;

  List<FilterOption> filterOptions = [];

  Future<void> _loadFilterList() async {
    final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
    final appInitData = appInitBox.get(kAppInitData);

    setState(() {
      filterOptions = appInitData?.data?.filterOptions ?? [];
    });
  }
  @override
  void initState() {
    super.initState();
    _loadFilterList();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(filterOptions.length, (index) {
          return FilterTapItem(
            label: filterOptions[index].value ?? "",
            isSelected: selectedTabIndex == index,
            onPressed: () {
              context.read<MapsCubit>().filterOption = filterOptions[index].key ?? 0;
              setState(() {
                selectedTabIndex = index;
              });
              context.read<MapsCubit>().getMapsData();
            },
          );
        }),
      ),
    );
  }
}
