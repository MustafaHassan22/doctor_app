import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctor_shimmer_loading.dart';
import 'package:doctor_app/features/home/ui/widgets/speciality_list/speciality_list.dart';
import 'package:doctor_app/features/home/ui/widgets/speciality_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityBlocbuilder extends StatelessWidget {
  const SpecialityBlocbuilder({super.key});

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
            specializationData: final specializationDataList,
          ):
            var specializationList = specializationDataList;
            return setupSuccess(specializationList!);
          case SpecializationFailure(errorHandler: final errorHandler):
            return setupFailure(errorHandler);

          default:
            return throw UnimplementedError();
        }
      },
    );
  }

  Widget setupFailure(ApiErrorHandler errorHandler) {
    return Center(
      child: Text(
        errorHandler.toString(),
        style: const TextStyle(color: Colors.red),
      ),
    );
  }

  Widget setupSuccess(List<SpecializationData?> specializationList) {
    return SpecialityList(sepcializtionDataList: specializationList);
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}
