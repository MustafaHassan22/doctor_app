import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/core/widgets/app_text_button.dart';
import 'package:doctor_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:doctor_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/already_have_account.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:doctor_app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font13GrayNormal,
                ),
                verticalSpace(8),
                Column(
                  children: [
                    SignupForm(),
                    verticalSpace(24),

                    AppTextButton(
                      buttonText: 'Sign Up',
                      onPressed: () {
                        validateThenSignUp(context);
                      },
                      textStyle: TextStyles.font16WhiteSemiBold,
                    ),

                    verticalSpace(18),

                    const TermsAndConditionsText(),
                    verticalSpace(8),
                    AlreadyHaveAccount(),
                    verticalSpace(16),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
