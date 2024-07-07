import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font20BoldWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font15MediumDarkGreen = TextStyle(
      color: ColorsManager.darkGreenColor,
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium);
      static TextStyle font15MediumDarkred = TextStyle(
      color: Color.fromARGB(255, 121, 43, 43),
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font20BoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font14MediumWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font14MediumGray = TextStyle(
      color: ColorsManager.grey,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font18SemiBoldPurple = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font12RegularPurple = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular);
  static TextStyle font12BlackBold = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font18SemiBoldWhite = TextStyle(
      color: ColorsManager.mainWhite,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font18SemiBoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font14MediumLightBlack = TextStyle(
      color: ColorsManager.mainBlack.withOpacity(0.5),
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);
  static TextStyle font16SemiBoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font16SemiBoldPurple = TextStyle(
      color: ColorsManager.mainColor,
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold);
  static TextStyle font24SemiBoldBlack = TextStyle(
      color: ColorsManager.mainBlack,
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.semiBold);
}
