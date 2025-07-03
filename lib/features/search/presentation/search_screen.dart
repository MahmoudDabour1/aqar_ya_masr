import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_app_bar.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_search_text_field.dart';
import 'package:aqar_ya_masr/features/search/logic/search_cubit.dart';
import 'package:aqar_ya_masr/features/search/presentation/widgets/search_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/router_observer.dart';
import '../../../core/routing/routes.dart';

class SearchScreen extends StatefulWidget {
  final String? initialSearchValue;

  const SearchScreen({super.key, this.initialSearchValue});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    checkInitialSearchValue();
  }

  void checkInitialSearchValue() {
    final cubit = context.read<SearchCubit>();
    if (widget.initialSearchValue != null &&
        widget.initialSearchValue!.isNotEmpty) {
      cubit.searchController.text = widget.initialSearchValue!;
      cubit.search();
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppCustomAppBar(
        appBatTitle: "العقارات",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              verticalSpace(16),
              AppCustomSearchTextField(
                controller: cubit.searchController,
                onSaved: (value) {
                  logger.w(value);
                  if (value != null && value.isNotEmpty) {
                    cubit.search();
                  }
                },
                onFieldSubmitted: (value) {
                  logger.w(value);
                  if (value != null && value.isNotEmpty) {
                    cubit.search();
                  }
                },
                onPressedFilter: (){
                  context.pushNamed(Routes.filterScreen);
                },
              ),
              verticalSpace(32),
              SearchBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
