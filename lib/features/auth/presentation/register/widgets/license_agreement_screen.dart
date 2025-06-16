import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/features/auth/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../home/data/models/app_init_model.dart';

class LicenseAgreementScreen extends StatelessWidget {
  const LicenseAgreementScreen({super.key});

  Future<Object?> _loadLicense() async {
    var appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
    var appInitData = appInitBox.get(kAppInitData);
    return appInitData?.data?.about?.licenseAgreement ?? "";
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 35.r,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: Text(
          "الشروط والأحكام",
          style: AppStyles.font18BlackBold,
        ),
        centerTitle: true,
      ),
      body:

      FutureBuilder<Object?>(
        future: _loadLicense(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(
                child: Text("حدث خطأ أثناء تحميل البيانات"));
          } else if (snapshot.hasData && snapshot.data != null) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Html(
                data: snapshot.data!.toString(),
                style: {
                  "p": Style(
                    fontSize: FontSize.xLarge,
                    color: AppColors.blackColor,
                  ),
                },
              ),
            );
          } else {
            return const Center(child: Text("لا توجد بيانات للعرض"));
          }
        },
      ),


      // Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 8.w),
      //   child: Column(
      //     children: [
      //       Html(data: cubit.license.toString(), style: {
      //         "p": Style(
      //           fontSize: FontSize.xLarge,
      //           color: AppColors.blackColor,
      //         ),
      //       }),
      //     ],
      //   ),
      // ),
    );
  }
}
