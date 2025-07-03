import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/features/filter/logic/filter_cubit.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/widgets/app_custom_bottom_sheet.dart';

class CityAndDistrictsBottomSheets extends StatefulWidget {
  const CityAndDistrictsBottomSheets({super.key});

  @override
  State<CityAndDistrictsBottomSheets> createState() =>
      _CityAndDistrictsBottomSheetsState();
}

class _CityAndDistrictsBottomSheetsState
    extends State<CityAndDistrictsBottomSheets> {
  final districtsController = TextEditingController();
  final cityController = TextEditingController();

  City? selectedDistrict;
  City? selectedCity;

  List<City> cities = [];
  List<City> districts = [];

  Future<void> _loadData() async {
    try {
      final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
      final appInitData = appInitBox.get(kAppInitData);
      final loadedCities = appInitData?.data?.cities ?? [];

      setState(() {
        cities = loadedCities
            .where((g) => g.districts != null && g.districts!.isNotEmpty)
            .toList();
      });
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FilterCubit>();
    cities = cities
        .where((city) => city.districts != null && city.districts!.isNotEmpty)
        .toList();
    return Column(
      children: [
        verticalSpace(32),
        AppCustomBottomSheet<City>(
          controller: cityController,
          label: "المحافظة",
          items: cities,
          getTitle: (value) => value.name ?? "",
          onItemSelected: (value) {
            selectedCity = value;
            districts = value.districts ?? [];
            selectedDistrict = null;
            districtsController.clear();
            cubit.city = value.id.toString();
                      setState(() {});
            // districts = value.districts ?? [];
            // selectedDistrict = null;
            // districtsController.clear();
            // cubit.city = value.id.toString();
            // setState(() {});
          },
        ),
        verticalSpace(16),
        selectedCity == null?SizedBox.shrink(): AppCustomBottomSheet<City>(
          controller: districtsController,
          label: "المدينة",
          items: districts,
          getTitle: (value) => value.name ?? "",
          onItemSelected: (value) {
            selectedDistrict = value;
            cubit.district = value.id.toString();
            setState(() {});
          },
        ),
        verticalSpace(16),
      ],
    );
  }
}
