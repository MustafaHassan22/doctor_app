import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_blue_card.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_see_all.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list.dart';
import 'package:doctor_app/features/home/ui/widgets/home_screen_app_bar.dart';
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
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
              HomeScreenAppBar(),
              verticalSpace(8),
              DoctorBlueCard(),
              verticalSpace(16),
              DoctorSpecialitySeeAll(),
              verticalSpace(12),
              DoctorSpecialityList(),
              verticalSpace(16),
              DoctorsList(),
            ],
          ),
        ),
      ),
    );
  }
}
