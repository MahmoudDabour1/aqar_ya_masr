import 'package:aqar_ya_masr/features/home/presentation/home_screen.dart';
import 'package:aqar_ya_masr/features/info/presentation/info_screen.dart';
import 'package:aqar_ya_masr/features/layout/logic/bottom_nav_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState.initial());

  static BottomNavCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(BottomNavState.changeBottomNavIndex(index));
  }

  List<String> bottomNavIconsUnselected = [
    "assets/icons/ic_home_unselected.svg",
    "assets/icons/ic_map_unselected.svg",
    "assets/icons/ic_chat_unselected.svg",
    "assets/icons/ic_menu.svg",
  ];
List<String> bottomNavIconsSelected = [
    "assets/icons/ic_home.svg",
    "assets/icons/ic_map.svg",
    "assets/icons/ic_chat.svg",
    "assets/icons/ic_menu.svg",
  ];

  List<Widget> bottomNavScreens = [
    HomeScreen(),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    InfoScreen(),
  ]; List<String> bottomNavLabels = [
    "عقارات",
    "تصفح",
    "الرسائل",
    "المزيد",
  ];
}
