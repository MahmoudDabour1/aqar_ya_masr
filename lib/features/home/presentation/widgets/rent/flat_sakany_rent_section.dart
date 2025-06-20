import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/rent/falt_sakany_rent_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'flat_sakany_rent_single_item.dart';

class FlatSakanyRentSection extends StatelessWidget {
  const FlatSakanyRentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is FlatSakanyRentLoading ||
          current is FlatSakanyRentSuccess ||
          current is FlatSakanyRentFailure,
      builder: (context, state) {
        return state.maybeWhen(
          // flatSakanyRentLoading: () => setupLoading(),
          flatSakanyRentSuccess: (flatSakany) => setupSuccess(flatSakany),
          flatSakanyRentFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
  Widget setupSuccess(FlatSakanyRentModel flatSakany) {
    return FlatSakanyRentSingleItem(
      flatSakanyModel: flatSakany,
    );
  }
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
