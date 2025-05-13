import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  //specializations
  const factory HomeState.initial() = Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
    List<SpecializationData?>? specializationData,
  ) = SpecializationSuccess;
  const factory HomeState.specializationFailure(ApiErrorHandler errorHandler) =
      SpecializationFailure;

  //doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsFailure(ApiErrorHandler errorHandler) =
      DoctorsFailure;
}
