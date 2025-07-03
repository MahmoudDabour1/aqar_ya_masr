import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/rent/villa_sakany_rent_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_state.dart';
import 'aqar_momayas_rent_section.dart';
import 'flat_sakany_rent_section.dart';

class ContentForRent extends StatefulWidget {
  const ContentForRent({super.key});

  @override
  State<ContentForRent> createState() => _ContentForRentState();
}

class _ContentForRentState extends State<ContentForRent>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final isLoading = state is AqarMomayasRentLoading ||
            state is VillaSakanyRentLoading ||
            state is FlatSakanyRentLoading;

        if (isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              AqarMomayasRentSection(),
              VillaSakanyRentSection(),
              FlatSakanyRentSection(),
            ],
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
