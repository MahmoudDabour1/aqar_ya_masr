import 'package:aqar_ya_masr/features/home/data/models/villa_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/villa_sakany_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class VillaSakanySection extends StatelessWidget {
  const VillaSakanySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is VillaSakanyLoading ||
          current is VillaSakanySuccess ||
          current is VillaSakanyFailure,
      builder: (context, state) {
        return state.maybeWhen(
          villaSakanyLoading: () => setupLoading(),
          villaSakanySuccess: (villaSakany) => setupSuccess(villaSakany),
          villaSakanyFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(VillaSakanyModel villaSakany) {
    return VillaSakanySingleItem(
      villaSakanyModel: villaSakany,
    );
  }

  Widget setupLoading() => const Center(child: CircularProgressIndicator());

  Widget setupError(String error) {
    return Center(
      child: Text(
        error,
        style: AppStyles.font16BlackMedium,
      ),
    );
  }
}
