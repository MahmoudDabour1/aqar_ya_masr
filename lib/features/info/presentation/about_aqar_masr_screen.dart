import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/app_constants.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

import '../../../core/utils/spacing.dart';

class AboutAqarMasrScreen extends StatelessWidget {
  const AboutAqarMasrScreen({super.key});

  Future<Object?> _loadLicense() async {
    var appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
    var appInitData = appInitBox.get(kAppInitData);
    return appInitData?.data?.about?.aboutUs ?? "";
  }

  @override
  Widget build(BuildContext context) {
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
          "عن عقار مصر",
          style: AppStyles.font18BlackBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/default_about_us.png",
              width: MediaQuery.sizeOf(context).width,
              height: 250.h,
              fit: BoxFit.cover,
            ),
            verticalSpace(16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "عن عقار مصر",
                style: AppStyles.font18BlackBold,
              ),
            ),
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
                          fontSize: FontSize.large,
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
          ],
        ),
      ),
    );
  }
}
