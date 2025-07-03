import 'package:aqar_ya_masr/features/home/presentation/widgets/rent/villa_sakany_rent_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/rent/villa_sakany_rent_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class VillaSakanyRentSection extends StatelessWidget {
  const VillaSakanyRentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is VillaSakanyRentLoading ||
          current is VillaSakanyRentSuccess ||
          current is VillaSakanyRentFailure,
      builder: (context, state) {
        return state.maybeWhen(
          // villaSakanyRentLoading: () => setupLoading(),
          villaSakanyRentSuccess: (villaSakany) => setupSuccess(villaSakany),
          villaSakanyRentFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
  Widget setupSuccess(VillaSakanyRentModel villaSakany) {
    return VillaSakanyRentSingleItem(
      villaSakanyModel: villaSakany,
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
