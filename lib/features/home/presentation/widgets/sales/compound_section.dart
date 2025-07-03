import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/compound_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/sale/compound_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class CompoundSection extends StatelessWidget {
  const CompoundSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CompoundLoading ||
          current is CompoundSuccess ||
          current is CompoundFailure,
      builder: (context, state) {
        return state.maybeWhen(
          // compoundLoading: () => setupLoading(),
          compoundSuccess: (compoundData) => setupSuccess(compoundData),
          compoundFailure: (error) => setupError(error),
          orElse: () =>setupLoading(),
        );
      },
    );
  }

  Widget setupSuccess(CompoundModel compoundModel) {
    return CompoundSingleItem(
      compoundModel: compoundModel,
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
