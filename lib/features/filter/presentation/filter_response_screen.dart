import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_app_bar.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_search_text_field.dart';
import 'package:aqar_ya_masr/features/filter/logic/filter_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/all_aqar_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home/presentation/all_aqars_screen.dart';
import '../logic/filter_state.dart';

class FilterResponseScreen extends StatefulWidget {
  const FilterResponseScreen({super.key});

  @override
  State<FilterResponseScreen> createState() => _FilterResponseScreenState();
}

class _FilterResponseScreenState extends State<FilterResponseScreen> {
  String? appBarTitle;

  @override
  void initState() {
    super.initState();
    context.read<FilterCubit>().getFilterData();
    switch (context.read<FilterCubit>().aqarType) {
      case AqarType.aqarMomayas:
        appBarTitle = "عقارات مميزه";
        break;
      case AqarType.compound:
        appBarTitle = "كمبوندات";
        break;
      case AqarType.qsrSakany:
        appBarTitle = "قصر سكني";
        break;
      case AqarType.villaSakany:
        appBarTitle = "فيلا سكني";
        break;
      case AqarType.flatSakany:
        appBarTitle = "شقة سكني";
        break;
      case AqarType.aqarMomayasRent:
        appBarTitle = "عقارات مميزه للايجار";
        break;
      case AqarType.qsrSakanyRent:
        appBarTitle = "قصر سكني للايجار";
        break;
      case AqarType.villaSakanyRent:
        appBarTitle = "فيلا سكني للايجار";
        break;
      case AqarType.flatSakanyRent:
        appBarTitle = "شقة سكني للايجار";
        break;
      default:
        appBarTitle = "نتائج التصفية";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(appBatTitle: appBarTitle.toString()),
      body: BlocBuilder<FilterCubit, FilterState>(
        buildWhen: (previous, current) =>
            current is FilterLoading ||
            current is FilterSuccess ||
            current is FilterError,
        builder: (context, state) {
          return state.maybeWhen(
            filterLoading: () => Center(
              child: CircularProgressIndicator(),
            ),
            filterSuccess: (data) => SingleChildScrollView(
              child: setupSuccess(
                data.data?.ads ?? [],
                context,
              ),
            ),
            filterError: (error) => Center(
              child: Text(
                error,
                style: TextStyle(color: Colors.red),
              ),
            ),
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget setupSuccess(List<dynamic> dataList, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppCustomSearchTextField(
              onFieldSubmitted: (value) {
                context.pushNamed(
                  Routes.searchScreen,
                  arguments: value.toString(),
                );
              },
              onPressedFilter: () {
                Navigator.pop(context);
              },
            ),
            verticalSpace(16),
            AllAqarSingleItem(dataModel: dataList),
          ],
        ),
      ),
    );
  }
}
