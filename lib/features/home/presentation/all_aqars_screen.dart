import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_search_text_field.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/all_aqar_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/utils/spacing.dart';
import '../logic/home_state.dart';

class AllAqarScreen extends StatefulWidget {
  final String appBatTitle;
  final String model;

  const AllAqarScreen({
    super.key,
    required this.appBatTitle,
    required this.model,
  });

  @override
  State<AllAqarScreen> createState() => _AllAqarScreenState();
}

class _AllAqarScreenState extends State<AllAqarScreen> {
  @override
  void initState() {
    final cubit = context.read<HomeCubit>();
    super.initState();
    switch (widget.model) {
      case "AqarMomayasModel":
        cubit.getAqarMomayasData(500);
        break;
      case "CompoundModel":
        cubit.getCompounds(500);
        break;
      case "QsrSakanyModel":
        cubit.getQsrSakanyData(500);
        break;
      case "VillaSakanyModel":
        cubit.getVillaSakanyData(500);
        break;
      case "FlatSakanyModel":
        cubit.getFlatSakanyData(500);
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 35.r,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.appBatTitle,
          style: AppStyles.font18BlackMedium,
        ),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is VillaSakanyLoading ||
            current is VillaSakanySuccess ||
            current is VillaSakanyFailure ||
            current is FlatSakanyLoading ||
            current is FlatSakanySuccess ||
            current is FlatSakanyFailure ||
            current is QsrSakanyLoading ||
            current is QsrSakanySuccess ||
            current is QsrSakanyFailure ||
            current is CompoundLoading ||
            current is CompoundSuccess ||
            current is CompoundFailure ||
            current is AqarMomayasLoading ||
            current is AqarMomayasSuccess ||
            current is AqarMomayasFailure,
        builder: (context, state) {
          return state.maybeWhen(
            aqarMomayasSuccess: (aqarMomayas) =>
                setupSuccess(aqarMomayas.data?.ads ?? []),
            compoundSuccess: (compound) =>
                setupSuccess(compound.data?.ads ?? []),
            qsrSakanySuccess: (qsrSakany) =>
                setupSuccess(qsrSakany.qsrData?.ads ?? []),
            villaSakanySuccess: (villaSakany) =>
                setupSuccess(villaSakany.villaData?.ads ?? []),
            flatSakanySuccess: (flatSakany) =>
                setupSuccess(flatSakany.flatData?.ads ?? []),
            aqarMomayasLoading: () => setupLoading(),
            compoundLoading: () => setupLoading(),
            qsrSakanyLoading: () => setupLoading(),
            villaSakanyLoading: () => setupLoading(),
            flatSakanyLoading: () => setupLoading(),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget setupSuccess(List<dynamic> dataModel) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        child: Column(
          children: [
            AppCustomSearchTextField(),
            verticalSpace(16.h),
            AllAqarSingleItem(dataModel: dataModel),
          ],
        ),
      ),
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
