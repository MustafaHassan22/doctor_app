import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorListItem({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              height: 100.h,
              width: 120.w,
              'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
            ),
          ),
          horizontalSpace(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorModel?.name ?? 'Unknown Doctor',
                style: TextStyle(color: Colors.black),
              ),
              verticalSpace(4),
              Text('${doctorModel?.degree} | ${doctorModel?.phone}'),
              verticalSpace(4),

              Text(
                doctorModel?.email ?? 'email test',
                style: TextStyles.font13DarkBlueNormal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
