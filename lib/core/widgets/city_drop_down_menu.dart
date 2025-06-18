import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../features/home/data/models/app_init_model.dart';
import '../theming/app_styles.dart';
import '../utils/app_constants.dart';
import '../utils/spacing.dart';
import 'app_text_form_field.dart';

class CityDropDownMenu extends StatefulWidget {
  final TextEditingController controller;
  final String? initialCityId;
  final Function(City selectedCity) onCitySelected;

  const CityDropDownMenu({
    super.key,
    required this.controller,
    this.initialCityId,
    required this.onCitySelected,
  });

  @override
  State<CityDropDownMenu> createState() => _CityDropDownMenuState();
}

class _CityDropDownMenuState extends State<CityDropDownMenu> {
  Future<List<City>> _loadCities() async {
    final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
    final appInitData = appInitBox.get(kAppInitData);
    return appInitData?.data?.cities ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<City>>(
      future: _loadCities(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Text("حدث خطأ أثناء تحميل المحافظات");
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text("لا توجد محافظات متاحة");
        }

        final cities = snapshot.data!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("المحافظة", style: AppStyles.font18BlackMedium),
            verticalSpace(8),
            AppTextFormField(
              controller: widget.controller,
              labelText: "اختار المحافظة",
              readOnly: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "الرجاء اختيار المحافظة";
                }
                return null;
              },
              suffixIcon: Icon(Icons.keyboard_arrow_down_outlined, size: 30.r),
              onTap: () => _showCitySelectionBottomSheet(cities),
            ),
            verticalSpace(16),
          ],
        );
      },
    );
  }

  void _showCitySelectionBottomSheet(List<City> cities) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (_) => SizedBox(
        height: 400.h,
        child: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (_, index) {
            final city = cities[index];
            return ListTile(
              title: Center(child: Text(city.name ?? "")),
              onTap: () {
                widget.controller.text = city.name ?? "";
                widget.onCitySelected(city);
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
    );
  }
}
