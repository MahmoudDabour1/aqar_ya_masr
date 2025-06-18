import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/aqar_momayas_section.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/qsr_sakany_section.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/villa_sakany_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_state.dart';
import 'compound_section.dart';
import 'flat_sakany_section.dart';

class ContentForSales extends StatefulWidget {
  const ContentForSales({super.key});

  @override
  State<ContentForSales> createState() => _ContentForSalesState();
}

class _ContentForSalesState extends State<ContentForSales> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final isLoading = state is AqarMomayasLoading ||
            state is VillaSakanyLoading ||
            state is FlatSakanyLoading ||
            state is CompoundLoading ||
            state is QsrSakanyLoading;

        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              AqarMomayasSection(),
              CompoundSection(),
              QsrSakanySection(),
              VillaSakanySection(),
              FlatSakanySection()
            ],
          ),
        );
      },
    );
  }
}
