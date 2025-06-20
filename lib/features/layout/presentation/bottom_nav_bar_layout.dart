import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../logic/bottom_nav_cubit.dart';
import '../logic/bottom_nav_state.dart';

class BottomNavBarLayout extends StatelessWidget {
  const BottomNavBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        final bottomNavCubit = BlocProvider.of<BottomNavCubit>(context);

        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
            },
            child: SvgPicture.asset(
              'assets/icons/add.svg',
              width: 24.r,
              height: 24.r,
            ),
          ),

          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            padding: EdgeInsets.zero,
            notchMargin: 10,
            clipBehavior: Clip.antiAlias,
            height: 90.h,
            color: AppColors.whiteColor,
            elevation: 0,
            shadowColor: AppColors.whiteColor,
            shape: const CircularNotchedRectangle(),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: bottomNavCubit.currentIndex,
              iconSize: 40.r,
              selectedFontSize: 16.sp,
              unselectedFontSize: 16.sp,
              unselectedIconTheme: IconThemeData(
                size: 24.r,
              ),
              enableFeedback: true,
              onTap: (index) {
                bottomNavCubit.changeBottomNavIndex(index);
              },
              items: List.generate(
                bottomNavCubit.bottomNavIconsUnselected.length,
                (index) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      bottomNavCubit.bottomNavIconsUnselected[index]),
                  activeIcon: SvgPicture.asset(
                      bottomNavCubit.bottomNavIconsSelected[index]),
                  label: bottomNavCubit.bottomNavLabels[index],
                ),
              ),
            ),
          ),

          // FittedBox(
          //   fit: BoxFit.contain,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           blurRadius: 20,
          //           color: Colors.black.withValues(alpha: .1),
          //         )
          //       ],
          //     ),
          //     child: SafeArea(
          //       child: Padding(
          //         padding: EdgeInsets.symmetric(
          //           horizontal: 15.0.w,
          //           vertical: 8.h,
          //         ),
          //         child: GNav(
          //           rippleColor: Colors.grey[300]!,
          //           hoverColor: Colors.grey[100]!,
          //           gap: 8,
          //           activeColor: Colors.black,
          //           iconSize: 24,
          //           padding:
          //               EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          //           duration: Duration(milliseconds: 400),
          //           tabBackgroundColor: Colors.grey[100]!,
          //           color: Colors.black,
          //           tabs: List.generate(
          //             bottomNavCubit.bottomNavScreens.length,
          //             (index) => GButton(
          //               icon: bottomNavCubit.bottomNavIconsUnselected[index],
          //               // icon: SvgPicture.asset(
          //               //     bottomNavCubit.bottomNavIconsSelected[index]);
          //               // text: context.read<AppLocalizationCubit>()
          //               // .appLocale ==
          //               // AppLocale.en
          //               // ? AppLocale.bottomNavItems[index]
          //               // : AppLocale.bottomNavItemsAR[index],
          //             ),
          //           ),
          //           selectedIndex: bottomNavCubit.currentIndex,
          //           onTabChange: (value) {
          //             bottomNavCubit.changeBottomNavIndex(value);
          //           },
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          body: IndexedStack(
            index: bottomNavCubit.currentIndex,
            children: bottomNavCubit.bottomNavScreens,
          ),
        );
      },
    );
  }
}
