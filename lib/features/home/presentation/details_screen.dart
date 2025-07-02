import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_button.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/logic/home_state.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/ad_details_widgets/aqar_details_texts_widget.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/ad_details_widgets/details_images_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/shared_pref_helper.dart';
import '../../../core/helpers/shared_pref_keys.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/app_colors.dart';
import '../logic/home_cubit.dart';

class DetailsScreen extends StatefulWidget {
  final int adId;

  const DetailsScreen({super.key, required this.adId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
    print(token);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: token == null || token!.isEmpty
            ? Padding(
                padding: EdgeInsets.all(16.r),
                child: AppCustomButton(
                    textButton: "سجل دخول لعرض بيانات التواصل",
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    }),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.maybeWhen(
                adDetailsLoading: () => setupLoading(),
                adDetailsSuccess: (adModel) =>
                    SingleChildScrollView(child: setupSuccess(adModel)),
                adDetailsFailure: (e) => setupError(e),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget setupSuccess(AdDetailsModel adModel) {
    return Column(
      children: [
        DetailsImagesWidget(
          adModel: adModel,
        ),
        verticalSpace(16),
        AqarDetailsTextsWidget(
          adModel: adModel,
        ),
      ],
    );
  }

  Widget setupLoading() => Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
      );

  Widget setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font18BlackMedium,
      ),
    );
  }
}
