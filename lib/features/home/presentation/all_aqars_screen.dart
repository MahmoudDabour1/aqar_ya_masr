import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_search_text_field.dart';
import 'package:aqar_ya_masr/features/filter/logic/filter_cubit.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/all_aqar_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/utils/spacing.dart';
import '../logic/home_state.dart';

class AllAqarScreen extends StatefulWidget {
  final String appBatTitle;
  final AqarType aqarType;

  const AllAqarScreen({
    super.key,
    required this.appBatTitle,
    required this.aqarType,
  });

  @override
  State<AllAqarScreen> createState() => _AllAqarScreenState();
}

class _AllAqarScreenState extends State<AllAqarScreen> {
  @override
  void initState() {
    final cubit = context.read<HomeCubit>();
    super.initState();
    switch (widget.aqarType) {
      case AqarType.aqarMomayas:
        cubit.getAqarMomayasData(500);
        break;
      case AqarType.compound:
        cubit.getCompounds(500);
        break;
      case AqarType.qsrSakany:
        cubit.getQsrSakanyData(500);
        break;
      case AqarType.villaSakany:
        cubit.getVillaSakanyData(500);
        break;
      case AqarType.flatSakany:
        cubit.getFlatSakanyData(500);
        break;
      case AqarType.aqarMomayasRent:
        cubit.getAqarMomayasRentData(500);
        break;
      case AqarType.qsrSakanyRent:
        cubit.getQsrSakanyRentData(500);
        break;
      case AqarType.villaSakanyRent:
        cubit.getVillaSakanyRentData(500);
        break;
      case AqarType.flatSakanyRent:
        cubit.getFlatSakanyRentData(500);
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
            current is AqarMomayasFailure||
            current is AqarMomayasRentLoading ||
            current is AqarMomayasRentSuccess ||
            current is AqarMomayasRentFailure ||
            current is QsrSakanyRentLoading ||
            current is QsrSakanyRentSuccess ||
            current is QsrSakanyRentFailure ||
            current is VillaSakanyRentLoading ||
            current is VillaSakanyRentSuccess ||
            current is VillaSakanyRentFailure ||
            current is FlatSakanyRentLoading ||
            current is FlatSakanyRentSuccess ||
            current is FlatSakanyRentFailure,
        builder: (context, state) {
          return state.maybeWhen(
            aqarMomayasSuccess: (aqarMomayas) =>
                setupSuccess(aqarMomayas.data?.ads ?? [],context),
            compoundSuccess: (compound) =>
                setupSuccess(compound.data?.ads ?? [],context),
            qsrSakanySuccess: (qsrSakany) =>
                setupSuccess(qsrSakany.qsrData?.ads ?? [],context),
            villaSakanySuccess: (villaSakany) =>
                setupSuccess(villaSakany.villaData?.ads ?? [],context),
            flatSakanySuccess: (flatSakany) =>
                setupSuccess(flatSakany.flatData?.ads ?? [],context),
            aqarMomayasLoading: () => setupLoading(),
            compoundLoading: () => setupLoading(),
            qsrSakanyLoading: () => setupLoading(),
            villaSakanyLoading: () => setupLoading(),
            flatSakanyLoading: () => setupLoading(),
           villaSakanyRentLoading: () => setupLoading(),
            villaSakanyRentSuccess: (villaSakanyRent) =>
                setupSuccess(villaSakanyRent.data?.ads ?? [],context),
            flatSakanyRentLoading: () => setupLoading(),
            flatSakanyRentSuccess: (flatSakanyRent) =>
                setupSuccess(flatSakanyRent.data?.ads ?? [],context),
            qsrSakanyRentLoading: () => setupLoading(),
            qsrSakanyRentSuccess: (qsrSakanyRent) =>
                setupSuccess(qsrSakanyRent.data?.ads ?? [],context),
            aqarMomayasRentLoading: () => setupLoading(),
            aqarMomayasRentSuccess: (aqarMomayasRent) =>
                setupSuccess(aqarMomayasRent.data?.ads ?? [],context),

            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget setupSuccess(List<dynamic> dataModel,BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        child: Column(
          children: [
            AppCustomSearchTextField(
              onPressedFilter: (){
                context.pushNamed(Routes.filterScreen);
                context.read<FilterCubit>().aqarType = widget.aqarType;
              },
            ),
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

enum AqarType {
  aqarMomayas,
  compound,
  qsrSakany,
  villaSakany,
  flatSakany,
  aqarMomayasRent,
  qsrSakanyRent,
  villaSakanyRent,
  flatSakanyRent,
}
