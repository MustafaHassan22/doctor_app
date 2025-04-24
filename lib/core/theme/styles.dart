import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/font_wieght_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13BlueNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font13GrayNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsManager.gray,
  );

  static TextStyle font14GrayNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsManager.gray,
  );

  static TextStyle font13DarkBlueNormal = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );

  static TextStyle font14lightGrayNormal = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsManager.lightGray,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
}
