import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import 'list_view_item_widget.dart';

class AllAqarSingleItem extends StatelessWidget {
  final List<dynamic> dataModel;
  final ScrollPhysics? physics;

  const AllAqarSingleItem({
    super.key,
    required this.dataModel, this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics:physics?? NeverScrollableScrollPhysics(),
        itemCount: dataModel.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final ad = dataModel[index];
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.detailsScreen,
                arguments: ad.id,
              );
            },
            child: ListViewItemWidget(
              price: ad.price ?? "",
              barIcons: ad.barIcon ?? [],
              title: ad.title ?? "",
              imageUrl: ad.defaultImage ?? "",
              description: ad.description ?? "",
              isAqarMomayas: true,
              isVerticalScroll: true,
            ),
          );
        },
      ),
    );
  }
}
