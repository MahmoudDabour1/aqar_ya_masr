import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/utils/app_constants.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:aqar_ya_masr/features/home/logic/home_cubit.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/rent/content_for_rent.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/sales/content_for_sales.dart';
import 'package:aqar_ya_masr/features/home/presentation/widgets/tap_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tapController;

  @override
  void initState() {
    super.initState();
    _tapController = TabController(length: 2, vsync: this);
    _loadAppInitData();
  }

  Future<void> _loadAppInitData() async {
    try {
      var appInitBox = await Hive.openBox<AppInitModel>(kAppInitBox);
      var appInitData = appInitBox.get(kAppInitData);

      if (appInitData != null) {
      } else {
        context.read<HomeCubit>().getAppInitData();
      }
    } catch (e) {
      debugPrint("Error loading app init data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("نطاط"),
        backgroundColor: AppColors.whiteColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SvgPicture.asset(
              "assets/images/notification2.svg",
              width: 24.w,
              height: 24.h,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120.h),
          child: TapBarWidget(
            tapController: _tapController,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tapController,
              children: [
                ContentForSales(),
                ContentForRent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
