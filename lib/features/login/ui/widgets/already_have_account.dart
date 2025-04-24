import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet?',
            style: TextStyles.font13DarkBlueNormal,
          ),
          TextSpan(text: ' Sign Up', style: TextStyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
