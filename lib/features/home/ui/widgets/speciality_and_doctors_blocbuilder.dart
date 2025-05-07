import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityAndDoctorsBlocbuilder extends StatelessWidget {
  const SpecialityAndDoctorsBlocbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is Initial ||
              current is SpecializationLoading ||
              current is SpecializationSuccess ||
              current is SpecializationFailure,
      builder: (context, state) {
        switch (state) {
          case SpecializationLoading():
            return setupLoading();
          case SpecializationSuccess(
            specializationResponseModel: final specializationResponseModel,
          ):
            var specializationList =
                specializationResponseModel.specializationData;
            return setupSuccess(specializationList);
          case SpecializationFailure(errorHandler: final errorHandler):
            return setupFailure(errorHandler);

          default:
            return throw UnimplementedError();
        }
      },
    );
  }

  Widget setupFailure(ErrorHandler errorHandler) {
    return Center(
      child: Text(
        errorHandler.toString(),
        style: const TextStyle(color: Colors.red),
      ),
    );
  }

  Widget setupSuccess(List<SpecializationData?>? specializationList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityList(sepcializtionDataList: specializationList),
          verticalSpace(16),
          DoctorsList(doctorsList: specializationList?[0]?.doctorsList),
        ],
      ),
    );
  }

  Widget setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
