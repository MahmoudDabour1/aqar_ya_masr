import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/spacing.dart';

class TextWithIconWidget extends StatelessWidget {
  final String text;
  final String iconPath;

  bool get isSvg => iconPath.endsWith('.svg?v=2') || iconPath.endsWith('.svg');
  final double? iconSize;
  final double? textSize;
  final Color? textColor;

  const TextWithIconWidget({
    super.key,
    required this.text,
    required this.iconPath,
    this.iconSize,
    this.textSize,  this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        isSvg
            ? SvgPicture.network(
                iconPath,
                width: iconSize ?? 16.w,
                height: iconSize ?? 16.h,
                placeholderBuilder: (BuildContext context) => SizedBox(
                  width: iconSize ?? 16.w,
                  height: iconSize ?? 16.h,
                  child: const CircularProgressIndicator(strokeWidth: 2),
                ),
                fit: BoxFit.contain,
              )
            : Image.network(
                iconPath,
                width: iconSize ?? 16.w,
                height: iconSize ?? 16.h,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.error,
                  size: iconSize ?? 16.w, // Match icon size
                  color: Colors.red,
                ),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return SizedBox(
                    width: 16.w,
                    height: 16.h,
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                      strokeWidth: 2,
                    ),
                  );
                },
              ),
        horizontalSpace(4),
        AutoSizeText(
          text,
          style: AppStyles.font16GrayLight.copyWith(
            fontSize: textSize ?? 14.sp,
            color:  textColor,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
