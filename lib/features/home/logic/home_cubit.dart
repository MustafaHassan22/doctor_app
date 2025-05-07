import 'package:doctor_app/core/networking/api_result.dart';

import 'package:doctor_app/features/home/data/repo/home_repo.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    switch (response) {
      case Success(data: final specializationResponse):
        emit(HomeState.specializationSuccess(specializationResponse));
      case Failure(errorHandler: final error):
        emit(HomeState.specializationFailure(error));
    }
  }
}
