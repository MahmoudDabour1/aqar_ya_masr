import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/city_drop_down_menu.dart';

class RegisterDropDownCityWidget extends StatefulWidget {
  const RegisterDropDownCityWidget({super.key});

  @override
  State<RegisterDropDownCityWidget> createState() =>
      _RegisterDropDownCityWidgetState();
}

class _RegisterDropDownCityWidgetState
    extends State<RegisterDropDownCityWidget> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return CityDropDownMenu(
      initialCityId: cubit.cityId,
      controller: cubit.cityController,
      onCitySelected: (selectedCity) {
        cubit.cityId = selectedCity.id.toString();
        cubit.cityController.text = selectedCity.name??'';
        debugPrint("cityId set to: ${cubit.cityId}");

      },
    );
    // AppTextFormField(
    //   labelText: "اختار المحافظة",
    //   controller: cubit.cityController,
    //   validator: (value) {
    //     if (value.isEmpty) {
    //       return "الرجاء اختيار المحافظة";
    //     }
    //     return null;
    //   },
    //   readOnly: true,
    //   suffixIcon: Icon(
    //     Icons.keyboard_arrow_down_outlined,
    //     size: 30.r,
    //   ),
    //   onTap: () {
    //     showModalBottomSheet(
    //       context: context,
    //       shape: RoundedRectangleBorder(
    //         borderRadius:
    //         BorderRadius.vertical(top: Radius.circular(0.r)),
    //       ),
    //       builder: (context) {
    //         return SizedBox(
    //           height: 500.h,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               verticalSpace(16),
    //               Expanded(
    //                 child: ListView.builder(
    //                   shrinkWrap: true,
    //                   itemCount: cubit.cities.length,
    //                   itemBuilder: (context, index) {
    //                     return ListTile(
    //                       title: Center(child: Text(cubit.cities[index].name ?? "")),
    //                       onTap: () {
    //                         cubit.cityId =
    //                             cubit.cities[index].id.toString();
    //                         cubit.cityController.text =
    //                             cubit.cities[index].name.toString();
    //                         Navigator.pop(context);
    //                       },
    //                     );
    //                   },
    //                 ),
    //               ),
    //             ],
    //           ),
    //         );
    //       },
    //     );
    //   },
    // ),
    // FutureBuilder<List<City>>(
    //   future: _loadCities(),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const Center(child: CircularProgressIndicator());
    //     } else if (snapshot.hasError) {
    //       return const Text("حدث خطأ أثناء تحميل المحافظات");
    //     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
    //       return const Text("لا توجد محافظات متاحة");
    //     }
    //
    //     final cities = snapshot.data!;
    //     return AppTextFormField(
    //       labelText: "اختار المحافظة",
    //       readOnly: true,
    //       validator: (value) => (value == null || value.isEmpty)
    //           ? "الرجاء اختيار المحافظة"
    //           : null,
    //       suffixIcon: Icon(Icons.keyboard_arrow_down_outlined, size: 30.r),
    //       onTap: () {
    //         _showCitySelectionBottomSheet(cities, cubit);
    //       },
    //     );
    //   },
    // ),
  }
}
