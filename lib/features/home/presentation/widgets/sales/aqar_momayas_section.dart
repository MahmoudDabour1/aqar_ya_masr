import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/features/home/data/models/aqar_momayas_model.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_state.dart';
import 'aqar_momayas_single_item.dart';

class AqarMomayasSection extends StatelessWidget {
  const AqarMomayasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is AqarMomayasLoading ||
          current is AqarMomayasSuccess ||
          current is AqarMomayasFailure,
      builder: (context, state) {
        return state.maybeWhen(
          aqarMomayasLoading: () => setupLoading(),
          aqarMomayasSuccess: (aqarMomayas) => setupSuccess(aqarMomayas),
          aqarMomayasFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(AqarMomayasModel aqarMomayas) {
    return AqarMomayasSingleItem(
      aqarMomayas: aqarMomayas,
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
