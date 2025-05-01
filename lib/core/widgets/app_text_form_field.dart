import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintSyle;
  final TextStyle? inputStyle;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Color? backgroudColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintSyle,
    this.inputStyle,
    this.obscureText,
    this.suffixIcon,
    this.backgroudColor,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.lighterGray),
              borderRadius: BorderRadius.circular(16.0),
            ),

        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintText: hintText,
        hintStyle: hintSyle ?? TextStyles.font14lightGrayNormal,
        fillColor: backgroudColor ?? ColorsManager.moreLightGray,
        filled: true,
        suffixIcon: suffixIcon,
      ),
      controller: controller,
      obscureText: obscureText ?? false,
      style: inputStyle ?? TextStyles.font14DarkBlueMedium,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
