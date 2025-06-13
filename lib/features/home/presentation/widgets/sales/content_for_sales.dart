import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/aqar_momayas_section.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/qsr_sakany_section.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/villa_sakany_section.dart';
import 'package:flutter/material.dart';

import 'compound_section.dart';
import 'flat_sakany_section.dart';

class ContentForSales extends StatefulWidget {
  const ContentForSales({super.key});

  @override
  State<ContentForSales> createState() => _ContentForSalesState();
}

class _ContentForSalesState extends State<ContentForSales>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
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
  }

  @override
  bool get wantKeepAlive => true;
}
