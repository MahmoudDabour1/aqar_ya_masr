import 'package:aqar_ya_masr/core/helpers/shared_pref_keys.dart';
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
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tapController;

  @override
  void initState() {
    super.initState();
    _tapController = TabController(length: 2, vsync: this);
    _tapController.addListener(_saveSelectedTab); // Add this listener
    _loadAppInitData();
    _fetchSaleData();
  }

  void _fetchSaleData() async {
    await Future.wait([
      context.read<HomeCubit>().getAqarMomayasData(6),
      context.read<HomeCubit>().getQsrSakanyData(6),
      context.read<HomeCubit>().getVillaSakanyData(6),
      context.read<HomeCubit>().getFlatSakanyData(6),
      context.read<HomeCubit>().getCompounds(6),
    ]);
  }

  void _saveSelectedTab() async {
    final prefs = await SharedPreferences.getInstance();
    final selected = _tapController.index == 0 ? 'sale' : 'rent';
    await prefs.setString(SharedPrefKeys.selectedTab, selected);

    if (selected == 'rent') {
      await Future.wait([
        context.read<HomeCubit>().getAqarMomayasRentData(6),
        context.read<HomeCubit>().getQsrSakanyRentData(6),
        context.read<HomeCubit>().getVillaSakanyRentData(6),
        context.read<HomeCubit>().getFlatSakanyRentData(6),
      ]);
    }
    if (selected == 'sale') {
      _fetchSaleData();
    }
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
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: true,
        toolbarHeight: 90.h,
        elevation: 0,
        title: Text("طنطا(قسم ثانى)"),
        backgroundColor: AppColors.whiteColor,
        actions: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.w),
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
      body: SafeArea(
        child: Column(
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
      ),
    );
  }

}
