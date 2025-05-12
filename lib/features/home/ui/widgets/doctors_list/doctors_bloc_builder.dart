import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/logic/home_cubit.dart';
import 'package:doctor_app/features/home/logic/home_state.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorsSuccess || current is DoctorsFailure,
      builder: (context, state) {
        switch (state) {
          case DoctorsSuccess(doctorsList: final doctorList):
            return setupSuccess(
              doctorList,
            ); // Now DoctorsList should handle scrolling
          case DoctorsFailure(errorHandler: final errorHandler):
            return setupError(errorHandler);
          default:
            return const SizedBox.shrink(); // Or a loading indicator
        }
      },
    );
  }

  Widget setupSuccess(List<Doctors?>? doctorList) {
    return DoctorsList(doctorsList: doctorList);
  }

  Widget setupError(ErrorHandler errorHandler) {
    return const SizedBox.shrink();
  }
}
