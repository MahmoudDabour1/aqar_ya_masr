import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_search_text_field.dart';
import 'package:aqar_ya_masr/features/info/logic/info_cubit.dart';
import 'package:aqar_ya_masr/features/info/logic/info_state.dart';
import 'package:aqar_ya_masr/features/info/presentation/widgets/price_guide_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_styles.dart';
import '../../../core/widgets/app_custom_app_bar.dart';

class PriceGuideScreen extends StatefulWidget {
  const PriceGuideScreen({super.key});

  @override
  State<PriceGuideScreen> createState() => _PriceGuideScreenState();
}

class _PriceGuideScreenState extends State<PriceGuideScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<InfoCubit>().getPriceGuideData();
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   context.read<InfoCubit>().getPriceGuideData();
    // });
    return Scaffold(
      appBar: AppCustomAppBar(appBatTitle: "دليل الأسعار"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            AppCustomSearchTextField(),
            verticalSpace(16),
            Expanded(
              child: BlocBuilder<InfoCubit, InfoState>(
                buildWhen: (previous, current) =>
                    current is PriceGuideLoading ||
                    current is PriceGuideFailure ||
                    current is PriceGuideSuccess,
                builder: (context, state) {
                  return state.maybeWhen(
                    priceGuideLoading: () => setupLoading(),
                    priceGuideSuccess: (priceGuideData) =>
                        PriceGuideSingleItem(priceGuideModel: priceGuideData),
                    priceGuideFailure: (e) => setupError(e.toString()),
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget setupLoading() => const Center(child: CircularProgressIndicator());

  Widget setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font18BlackMedium,
      ),
    );
  }
}
