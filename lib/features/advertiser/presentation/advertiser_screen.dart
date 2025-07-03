import 'package:aqar_ya_masr/core/widgets/app_custom_app_bar.dart';
import 'package:aqar_ya_masr/features/advertiser/data/models/advertiser_response_model.dart';
import 'package:aqar_ya_masr/features/advertiser/logic/advertiser_cubit.dart';
import 'package:aqar_ya_masr/features/advertiser/presentation/widgets/advertiser_header_widget.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/all_aqar_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_styles.dart';
import '../../../core/utils/spacing.dart';
import '../logic/advertiser_state.dart';

class AdvertiserScreen extends StatefulWidget {
  final int? advertiserId;

  const AdvertiserScreen({super.key, this.advertiserId});

  @override
  State<AdvertiserScreen> createState() => _AdvertiserScreenState();
}

class _AdvertiserScreenState extends State<AdvertiserScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AdvertiserCubit>().fetchAdvertiserData(widget.advertiserId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(appBatTitle: "المعلن"),
      body: BlocBuilder<AdvertiserCubit, AdvertiserState>(
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => setupLoading(),
              success: (data) => setupSuccess(context, data),
              failure: (error) => setupError(error),
              orElse: () => SizedBox.shrink());
        },
      ),
    );
  }

  Center setupLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font18BlackMedium,
      ),
    );
  }

  Widget setupSuccess(BuildContext context, AdvertiserResponseModel data) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: Column(
        children: [
          AdvertiserHeaderWidget(
            data: data,
          ),
          verticalSpace(16),
          Expanded(
            child: AllAqarSingleItem(
              dataModel: data.data?.ads ?? [],
              physics: BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
