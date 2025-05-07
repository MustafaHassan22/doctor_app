import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityList extends StatelessWidget {
  final List<SpecializationData?>? sepcializtionDataList;
  const DoctorSpecialityList({super.key, required this.sepcializtionDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: sepcializtionDataList!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return DoctorSpecialityListItem(
            specializationData: sepcializtionDataList?[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
