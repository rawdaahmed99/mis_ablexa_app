import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';
class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.textButton,
      required this.onPressed,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      this.textStyle, this.borderRadius});
  final String textButton;
  final double? borderRadius;
  final Function()? onPressed;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          minimumSize:
              MaterialStateProperty.all( Size(double.infinity, 55.h)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 30))),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: MaterialStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12.h,
            vertical: verticalPadding ?? 14.w,
          ),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h),
          ),
          backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? ColorsManager.mainColor)),
      onPressed: onPressed,
      child: Text(
        textButton,
        style: textStyle ?? TextStyles.font18SemiBoldWhite,
      ),
    );
  }
}
