import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/features/filter/logic/filter_cubit.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/utils/app_constants.dart';
import 'check_box_item.dart';

class AqarTypesCheckBoxSection extends StatefulWidget {
  const AqarTypesCheckBoxSection({super.key});

  @override
  State<AqarTypesCheckBoxSection> createState() =>
      _AqarTypesCheckBoxSectionState();
}

class _AqarTypesCheckBoxSectionState extends State<AqarTypesCheckBoxSection> {
  List<MainType> mainTypes = [];
  String? selectedMainType;

  List<MainType> mainTypesOption = [];
  String? selectedMainTypeOption;

  Future<void> _loadData() async {
    try {
      final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
      final appInitData = appInitBox.get(kAppInitData);
      final loadedMainType = appInitData?.data?.mainTypes ?? [];
      setState(() {
        mainTypes = loadedMainType
            .map((type) => MainType(
                  id: type.id,
                  name: type.name,
                  children: type.children,
                ))
            .toList();

        mainTypesOption =
            mainTypes.isNotEmpty ? mainTypes.first.children ?? [] : [];

        selectedMainTypeOption = null;
      });
    } catch (e) {
      if (kDebugMode) {
        print("Error loading data: $e");
      }
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
        Text("نوع العقار", style: AppStyles.font18BlackMedium),
        CheckBoxItem(
          selectedId: selectedMainType,
          items: mainTypes,
          onSelect: (id) {
            if (selectedMainType == id) {
              setState(() {
                selectedMainType = null;
                mainTypesOption = [];
                selectedMainTypeOption = null;
              });
              return;
            }
            setState(() {
              selectedMainType = id;
              cubit.mainType = id;
              mainTypesOption =
                  mainTypes.firstWhere((e) => e.id.toString() == id).children ??
                      [];
              selectedMainTypeOption = null;
            });
          },
        ),
        Divider(thickness: 1, color: AppColors.grayColor),
        selectedMainType == null
            ? SizedBox.shrink()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("النوع الفرعى", style: AppStyles.font18BlackMedium),
                  CheckBoxItem(
                    selectedId: selectedMainTypeOption,
                    items: mainTypesOption,
                    onSelect: (id) {
                      if (selectedMainTypeOption == id) {
                        setState(() {
                          selectedMainTypeOption = null;
                        });
                        return;
                      }
                      setState(() {
                        selectedMainTypeOption = id;
                        cubit.typeId = id;
                      });
                    },
                  ),
                ],
              ),
      ],
    );
  }
}
