import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = _SpecializationLoading;
  const factory HomeState.specializationSuccess(
    SpecializationResponseModel specializationResponseModel,
  ) = _SpecializationSuccess;
  const factory HomeState.specializationFailure(ErrorHandler errorHandler) =
      _SpecializationFailure;
}
