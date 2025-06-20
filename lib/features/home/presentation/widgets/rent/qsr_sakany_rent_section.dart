import 'package:aqar_ya_masr/features/home/presentation/widgets/rent/qsr_sakany_rent_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/rent/qsr_sakany_rent_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class QsrSakanyRentSection extends StatelessWidget {
  const QsrSakanyRentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
      current is QsrSakanyRentLoading ||
          current is QsrSakanyRentSuccess ||
          current is QsrSakanyRentFailure,
      builder: (context, state) {
        return state.maybeWhen(
          // qsrSakanyRentLoading: () => setupLoading(),
          qsrSakanyRentSuccess: (asrSakany) => setupSuccess(asrSakany),
          qsrSakanyRentFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
  Widget setupSuccess(QsrSakanyRentModel qsrSakany) {
    return QsrSakanyRentSingleItem(
      qsrSakanyModel: qsrSakany,
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
