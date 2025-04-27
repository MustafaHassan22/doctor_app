import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowrCase;
  final bool hasUperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool minLenght;

  const PasswordValidations({
    super.key,
    required this.hasLowrCase,
    required this.hasUperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.minLenght,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        builValidationRow('At least 1 lowercase letter', hasLowrCase),
        builValidationRow('at least 1 upercase letter', hasUperCase),
        builValidationRow('at least 1 spwcial character', hasSpecialCharacter),
        builValidationRow('at least 1 number', hasNumber),
        builValidationRow('at least 8 characters long', minLenght),
      ],
    );
  }

  Widget builValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: ColorsManager.gray, radius: 2.5),
        horizontalSpace(2),
        Text(
          text,
          style: TextStyles.font13DarkBlueNormal.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
