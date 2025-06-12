import 'package:aqar_ya_masr/features/home/data/models/flat_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/flat_sakany_single_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class FlatSakanySection extends StatelessWidget {
  const FlatSakanySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is FlatSakanyLoading ||
          current is FlatSakanySuccess ||
          current is FlatSakanyFailure,
      builder: (context, state) {
        return state.maybeWhen(
          flatSakanyLoading: () => setupLoading(),
          flatSakanySuccess: (flatSakany) => setupSuccess(flatSakany),
          flatSakanyFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(FlatSakanyModel flatSakany) {
    return FlatSakanySingleModel(
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
