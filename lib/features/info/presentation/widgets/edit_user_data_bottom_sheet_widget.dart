import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../home/data/models/app_init_model.dart';

class EditUserDataBottomSheetWidget extends StatefulWidget {
  const EditUserDataBottomSheetWidget({super.key});

  @override
  State<EditUserDataBottomSheetWidget> createState() =>
      _EditUserDataBottomSheetWidgetState();
}

class _EditUserDataBottomSheetWidgetState
    extends State<EditUserDataBottomSheetWidget> {
  Future<List<City>> _loadCities() async {
    final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
    final appInitData = appInitBox.get(kAppInitData);
    return appInitData?.data?.cities ?? [];
  }

  final TextEditingController _cityController = TextEditingController();

  String? _selectedCityId;

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
        return AppTextFormField(
          labelText: "اختار المحافظة",
          readOnly: true,
          validator: (value) => (value.isEmpty)
              ? "الرجاء اختيار المحافظة"
              : null,
          suffixIcon: Icon(Icons.keyboard_arrow_down_outlined, size: 30.r),
          onTap: () {
            _showCitySelectionBottomSheet(cities);
          },
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
                setState(() {
                  _selectedCityId = city.id?.toString();
                  _cityController.text = city.name ?? "";
                });
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
    );
  }
}
