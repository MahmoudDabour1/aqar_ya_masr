import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/features/home/data/models/ad_details_model.dart';
import 'package:aqar_ya_masr/features/home/logic/home_state.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/ad_details_widgets/aqar_details_texts_widget.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/ad_details_widgets/details_images_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/app_colors.dart';
import '../logic/home_cubit.dart';

class DetailsScreen extends StatelessWidget {
  final int adId;

  const DetailsScreen({super.key, required this.adId});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
