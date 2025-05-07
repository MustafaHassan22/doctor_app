import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_blue_card.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widgets/home_screen_app_bar.dart';
import 'package:doctor_app/features/home/ui/widgets/speciality_and_doctors_blocbuilder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              const HomeScreenAppBar(),
              verticalSpace(8),
              const DoctorBlueCard(),
              verticalSpace(16),
              const DoctorSpecialitySeeAll(),
              verticalSpace(12),
              SpecialityAndDoctorsBlocbuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
