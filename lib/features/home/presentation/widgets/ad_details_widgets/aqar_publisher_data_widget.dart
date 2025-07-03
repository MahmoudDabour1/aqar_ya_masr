import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/helpers/helper_methods.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_helper.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_keys.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/utils/spacing.dart';

class AqarPublisherDataWidget extends StatefulWidget {
  final AdDetailsModel adDetailsModel;

  const AqarPublisherDataWidget({super.key, required this.adDetailsModel});

  @override
  State<AqarPublisherDataWidget> createState() =>
      _AqarPublisherDataWidgetState();
}

class _AqarPublisherDataWidgetState extends State<AqarPublisherDataWidget> {
  String? token;

  @override
  void initState() {
    super.initState();
    getToken();
  }

  Future<void> getToken() async {
    final fetchedToken =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    setState(() {
      token = fetchedToken;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16),
        Text(
          "ناشر الإعلان",
          style: AppStyles.font18BlackMedium,
        ),
        verticalSpace(16),
        GestureDetector(
          onTap: () async {
            if (token == null || token!.isEmpty) {
              showToast(
                message: "يجب عليك تسجيل الدخول أولا",
              );
            } else {
              context.pushNamed(Routes.advertiserScreen,
                  arguments:
                      widget.adDetailsModel.adDetailsData?.ad?.owner?.id);
            }
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundImage: widget
                            .adDetailsModel.adDetailsData?.ad?.owner?.image ==
                        null
                    ? AssetImage('assets/images/user_placeholder.png')
                    : NetworkImage(
                        widget.adDetailsModel.adDetailsData?.ad?.owner?.image,
                      ),
              ),
              horizontalSpace(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.adDetailsModel.adDetailsData?.ad?.owner?.name ?? "",
                    style: AppStyles.font18BlackBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    widget.adDetailsModel.adDetailsData?.ad?.owner?.phone ?? "",
                    style: AppStyles.font16grayRegular,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
        (token == null || token!.isEmpty)
            ? verticalSpace(80)
            : SizedBox.shrink(),
      ],
    );
  }
}
