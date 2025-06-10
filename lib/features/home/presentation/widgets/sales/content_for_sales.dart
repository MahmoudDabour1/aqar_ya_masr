import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/aqar_momayas_section.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/qsr_sakany_section.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/villa_sakany_section.dart';
import 'package:flutter/material.dart';

import 'flat_sakany_section.dart';

class ContentForSales extends StatelessWidget {
  const ContentForSales({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AqarMomayasSection(),
          QsrSakanySection(),
          VillaSakanySection(),
          FlatSakanySection()
        ],
      ),
    );
  }
}
