import 'package:aqar_ya_masr/features/home/data/models/qsr_sakany_model.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/qsr_sakany_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../logic/home_state.dart';

class QsrSakanySection extends StatelessWidget {
  const QsrSakanySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is QsrSakanyLoading ||
          current is QsrSakanySuccess ||
          current is QsrSakanyFailure,
      builder: (context, state) {
        return state.maybeWhen(
          qsrSakanyLoading: () => setupLoading(),
          qsrSakanySuccess: (asrSakany) => setupSuccess(asrSakany),
          qsrSakanyFailure: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(QsrSakanyModel qsrSakany) {
    return QsrSakanySingleItem(
      qsrSakanyModel: qsrSakany,
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
