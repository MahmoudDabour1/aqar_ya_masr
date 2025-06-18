import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/rent/aqar_momayas_rent_model.dart';
import '../../../logic/home_state.dart';
import 'aqar_momayas_rent_single_item.dart';

class AqarMomayasRentSection extends StatelessWidget {
  const AqarMomayasRentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is AqarMomayasRentLoading ||
          current is AqarMomayasRentSuccess ||
          current is AqarMomayasRentFailure,
      builder: (context, state) {
        return state.maybeWhen(
          // aqarMomayasRentLoading: () => setupLoading(),
          aqarMomayasRentSuccess: (aqarMomayas) => setupSuccess(aqarMomayas),
          aqarMomayasRentFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

Widget setupSuccess(AqarMomayasRentModel aqarMomayas) {
  return AqarMomayasRentSingleItem(
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
