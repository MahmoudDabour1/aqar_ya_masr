import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/utils/app_constants.dart';
import '../../home/data/models/app_init_model.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  bool isLoading = true;
  String? fbPageUrl;
  String? instaPageUrl;
  String? youtubePageUrl;
  String? twitterPageUrl;

  @override
  void initState() {
    super.initState();
    _loadAppLinks();
  }

  Future<void> _loadAppLinks() async {
    try {
      final appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
      final appInitData = appInitBox.get(kAppInitData);

      setState(() {
        isLoading = false;
        fbPageUrl = appInitData?.data?.about?.fbLink;
        instaPageUrl = appInitData?.data?.about?.instagramLink;
        youtubePageUrl = appInitData?.data?.about?.youtubeLink;
        twitterPageUrl = appInitData?.data?.about?.twitterLink;
      });
    } catch (e) {
      setState(() => isLoading = false);
    }
  }

  Future<void> _launchUrl(String? url, String errorMessage) async {
    if (url == null || url.isEmpty) {
      _showSnackBar(errorMessage);
      return;
    }

    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  Future<void> _sendEmail() async {
    final emailUri = Uri(
      scheme: 'mailto',
      path: 'info@aqaryamasr.com',
      query: 'subject=استفسار&body=مرحبا،',
    );

    await launchUrl(emailUri, mode: LaunchMode.externalApplication);
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget _socialIcon({
    required String assetPath,
    required String? url,
    required String errorMessage,
  }) {
    return GestureDetector(
      onTap: () => _launchUrl(url, errorMessage),
      child: SvgPicture.asset(
        assetPath,
        height: 40.h,
        width: 40.w,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: context.pop,
          child: Icon(Icons.arrow_back, size: 35.r),
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        title: Text("تواصل معانا", style: AppStyles.font18BlackBold),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(16),
                  Text(
                    "نقدر نساعدك؟",
                    style: AppStyles.font18PrimaryExtraBold
                        .copyWith(fontSize: 28.sp),
                  ),
                  verticalSpace(16),
                  Text(
                    "سعداء لاستخدام عقار يا مصر\n أرسل لنا استفسارك وسيتم الرد عليك فى أقرب وقت",
                    style: AppStyles.font18BlackMedium
                        .copyWith(color: AppColors.grayColor),
                  ),
                  verticalSpace(16),
                  Text("تواصل معنا من خلال البريد الالكترونى",
                      style: AppStyles.font18BlackMedium),
                  verticalSpace(8),
                  AppTextFormField(
                    onTap: _sendEmail,
                    labelText: "info@aqaryamasr.com",
                    validator: (value) {},
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      hintText: "info@aqaryamasr.com",
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: SvgPicture.asset("assets/icons/ic_email.svg"),
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  Center(
                    child: Text("او من خلال مواقع التواصل الاجتماعى",
                        style: AppStyles.font18BlackMedium),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialIcon(
                        assetPath: "assets/icons/ic_fb.svg",
                        url: fbPageUrl,
                        errorMessage: 'لا يمكن فتح فيسبوك',
                      ),
                      horizontalSpace(16),
                      _socialIcon(
                        assetPath: "assets/icons/ic_insta.svg",
                        url: instaPageUrl,
                        errorMessage: 'لا يمكن فتح انستجرام',
                      ),
                      horizontalSpace(16),
                      _socialIcon(
                        assetPath: "assets/icons/ic_youtube.svg",
                        url: youtubePageUrl,
                        errorMessage: 'لا يمكن فتح يوتيوب',
                      ),
                      horizontalSpace(16),
                      _socialIcon(
                        assetPath: "assets/icons/ic_twitter.svg",
                        url: twitterPageUrl,
                        errorMessage: 'لا يمكن فتح تويتر',
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
