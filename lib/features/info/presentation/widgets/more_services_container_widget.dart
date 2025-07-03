import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_helper.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_keys.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_dialog_widget.dart';
import 'more_services_single_item.dart';

class MoreServicesContainerWidget extends StatefulWidget {
  const MoreServicesContainerWidget({super.key});

  @override
  State<MoreServicesContainerWidget> createState() =>
      _MoreServicesContainerWidgetState();
}

class _MoreServicesContainerWidgetState
    extends State<MoreServicesContainerWidget> {
  bool _isLoggedIn = false;

  Future<void> _checkLoginStatus() async {
    final isLogged = await SharedPrefHelper.getBool(SharedPrefKeys.isLogged) ?? false;
    if (mounted) {
      setState(() {
        _isLoggedIn = isLogged;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.fillColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(right: 16.w, left: 16.w, top: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "المزيد من الخدمات",
              style: AppStyles.font14BlackLight,
            ),
            verticalSpace(16),
            MoreServicesSingleItem(
              title: "عن عقار مصر",
              imageUrl: "assets/icons/ic_information.svg",
              onPressed: () {
                context.pushNamed(Routes.aboutAqarMasrScreen);
              },
            ),
            Divider(),
            MoreServicesSingleItem(
              title: "س & ج",
              imageUrl: "assets/images/question_blue.svg",
              onPressed: () {},
            ),
            Divider(),
            MoreServicesSingleItem(
              title: "الشروط والاحكام",
              imageUrl: "assets/icons/ic_information.svg",
              onPressed: () {
                context.pushNamed(Routes.licenseAgreementScreen);
              },
            ),
            Divider(),
            MoreServicesSingleItem(
              title: "تواصل معانا",
              imageUrl: "assets/images/chat_blue.svg",
              onPressed: () {
                context.pushNamed(Routes.contactUsScreen);
              },
            ),
            Divider(),
            _isLoggedIn
                ? Column(
                    children: [
                      MoreServicesSingleItem(
                        title: "تسجيل الخروج",
                        imageUrl: "assets/images/logout.svg",
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AppCustomDialogWidget(
                                title: "هل أنت متأكد من تسجيل الخروج؟",
                                buttonText: "تسجيل الخروج",
                                onPressed: () async {
                                  await SharedPrefHelper.removeSecuredString(
                                      SharedPrefKeys.userToken);
                                  await SharedPrefHelper.setData(SharedPrefKeys.isLogged, false);
                                  Navigator.of(context).pop();
                                  setState(() {
                                    _isLoggedIn = false;
                                  });
                                  context.pushNameAndRemoveUntil(
                                      Routes.loginScreen,
                                      predicate: (route) => false);
                                },
                              );
                            },
                          );
                        },
                      ),
                      verticalSpace(16),
                      MoreServicesSingleItem(
                        title: "حذف الحساب",
                        imageUrl: "assets/images/delete_account.svg",
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AppCustomDialogWidget(
                                title: "هل أنت متأكد من حذف الحساب؟",
                                buttonText: "حذف الحساب",
                                onPressed: () async {
                                  setState(() {
                                    _isLoggedIn = false;
                                  });
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
                  )
                : SizedBox.shrink(),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
