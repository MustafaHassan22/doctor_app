import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';

import 'package:doctor_app/features/home/data/repo/home_repo.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationData?>? specializationsList = [];

  void getSpecializations() async {
    emit(HomeState.specializationLoading());
    final response = await _homeRepo.getSpecialization();
    switch (response) {
      case Success(data: final specializationResponse):
        specializationsList = specializationResponse.specializationData;
        //getting the doctor list for first  specialization by default
        getDcotorsList(specializationId: specializationsList?.first?.id);
        emit(HomeState.specializationSuccess(specializationsList));
      case Failure(errorHandler: final error):
        emit(HomeState.specializationFailure(error));
    }
  }

  void getDcotorsList({required int? specializationId}) {
    List<Doctors?>? doctorList = getDoctorsListBySpecializationId(
      specializationId,
    );

    if (!doctorList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorList));
    } else {
      emit(
        HomeState.doctorsFailure(ApiErrorHandler.handle('not doctor found')),
      );
    }
  }

  ///return a list of doctors based on specialization Id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
