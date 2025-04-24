import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRaduis;
  final Color? backgroudColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeith;
  final String buttonText;
  final TextStyle textStyle;

  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.borderRaduis,
    this.backgroudColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeith,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaduis ?? 16),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroudColor ?? ColorsManager.mainBlue,
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeith ?? 50.h),
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12.w,
            vertical: verticalPadding ?? 14.h,
          ),
        ),
      ),

      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}
