import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomSearchTextField extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final Color? fillColor;
  final VoidCallback? onPressedFilter;

  const AppCustomSearchTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.onSaved,
    this.fillColor,
    this.onPressedFilter,
    this.onFieldSubmitted,
  });

  @override
  State<AppCustomSearchTextField> createState() =>
      _AppCustomSearchTextFieldState();
}

class _AppCustomSearchTextFieldState extends State<AppCustomSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: (value) {
        widget.onChanged?.call(value);
        setState(() {});
      },
      onSaved: widget.onSaved,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        hintText: "بحث",
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 8.w, left: 8),
          child: SvgPicture.asset(
            "assets/icons/ic_search.svg",
            height: 25.h,
            width: 25.w,
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: widget.onPressedFilter,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              (widget.controller != null && widget.controller!.text.isNotEmpty)
                  ? Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: GestureDetector(
                          onTap: () {
                            widget.controller?.clear();
                            widget.onChanged?.call("");
                            setState(() {});
                          },
                          child:
                              SvgPicture.asset("assets/images/delete_img.svg")),
                    )
                  : SizedBox.shrink(),
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: SvgPicture.asset(
                  "assets/icons/ic_filter.svg",
                  height: 25.h,
                  width: 25.w,
                ),
              ),
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide.none,
        ),
        hintStyle: AppStyles.font16GrayLight,
        fillColor: widget.fillColor ?? AppColors.fillColor,
        filled: true,
        // hoverColor: AppColors.blueColor,
      ),
    );
  }
}
