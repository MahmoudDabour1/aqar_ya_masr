import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';

class MapFloatingActionButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;

  const MapFloatingActionButtonWidget({super.key, required this.onPressed});

  @override
  State<MapFloatingActionButtonWidget> createState() =>
      _MapFloatingActionButtonWidgetState();
}

class _MapFloatingActionButtonWidgetState
    extends State<MapFloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100.h,
      right: 16.w,
      child: FloatingActionButton(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        backgroundColor: AppColors.whiteColor,
        onPressed: widget.onPressed,
        child: SvgPicture.asset("assets/images/curr_location.svg"),
      ),
    );
  }
}
