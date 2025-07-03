import 'package:aqar_ya_masr/features/advertiser/data/models/advertiser_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/widgets/app_custom_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class AdvertiserHeaderWidget extends StatelessWidget {
  final AdvertiserResponseModel data;

  const AdvertiserHeaderWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage: data.data?.owner?.image == null
              ? AssetImage('assets/images/user_placeholder.png')
              : NetworkImage(
                  data.data?.owner?.image,
                ),
        ),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.data?.owner?.name ?? "",
                style: AppStyles.font18BlackBold,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    data.data?.owner?.phone ?? "",
                    style: AppStyles.font16grayRegular,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/block.svg',
                      width: 30.w,
                      height: 30.h,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/report.svg',
                      width: 30.w,
                      height: 30.h,
                    ),
                  ),
                ],
              ),
              verticalSpace(16),
              AppCustomButton(
                  textButton: "ارسال رساله",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          "ارسال رساله",
                          style: AppStyles.font18BlackBold,
                        ),
                        content: AppTextFormField(
                            maxLines: 5,
                            labelText: "اكتب رساله لصاحب العقار",
                            validator: (value) {
                              if (value.isEmpty) {
                                return "الرجاء ادخال رساله";
                              }
                              return null;
                            }),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "إلغاء",
                              style: AppStyles.font18PrimaryMedium,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "ارسال",
                              style: AppStyles.font18PrimaryMedium,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
