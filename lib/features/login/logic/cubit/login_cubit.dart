import 'package:doctor_app/core/networking/api_result.dart' as api;
import 'package:doctor_app/features/login/data/models/login_request_body.dart';
import 'package:doctor_app/features/login/data/repo/login_repo.dart';
import 'package:doctor_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  // Replace YourDataType
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  Future<void> emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    switch (response) {
      case api.Success(data: final loginResponse):
        emit(LoginState.success(loginResponse));
      case api.Failure(errorHandler: final error):
        emit(
          LoginState.failure(
            message:
                error.apiErrorModel.message ??
                'Failed to log in. Please try again.',
          ),
        );
    }
  }
}
