import 'package:aqar_ya_masr/features/search/presentation/widgets/search_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/search_cubit.dart';
import '../../logic/search_state.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchState>(
        buildWhen: (previous, current) {
          return current is SearchLoading ||
              current is SearchSuccess ||
              current is SearchFailure;
        },
        builder: (context, state) {
          return state.maybeWhen(
              searchLoading: () => setupLoading(),
              searchSuccess: (data) => SearchListViewItem(data: data),
              searchFailure: (e) => setupError(e),
              orElse: () => SizedBox.shrink());
        },
      ),
    );
  }

  Widget setupError(String e) {
    return Center(
      child: Text(
        "حدث خطأ أثناء البحث: $e",
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  Widget setupLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
