import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/my_bloc_observer.dart';
import 'package:aqar_ya_masr/features/search/data/models/search_response_model.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/all_aqar_single_item.dart';

class SearchListViewItem extends StatelessWidget {
  final SearchResponseModel data;

  const SearchListViewItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final ads = data.data?.ads ?? [];
    logger.w(ads);

    if (ads.isEmpty) {
      return Center(
        child: Text(
          "لا توجد عقارات",
          style: AppStyles.font18BlackMedium,
        ),
      );
    }

    return ListView.builder(
      itemCount: data.data?.ads?.length ?? 0,
      itemBuilder: (context, index) {
        return AllAqarSingleItem(
          dataModel: ads,
        );
      },
    );
  }
}
