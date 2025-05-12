import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListItem({
    super.key,
    this.specializationData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.darkBlue),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    height: 42.h,
                    width: 42.w,
                  ),
                ),
              )
              : CircleAvatar(
                radius: 28,
                backgroundColor: ColorsManager.lightBlue,
                child: SvgPicture.asset(
                  'assets/svgs/general_speciality.svg',
                  height: 40.h,
                  width: 40.w,
                ),
              ),
          verticalSpace(8),
          Text(
            specializationData?.name ?? '',
            style:
                itemIndex == selectedIndex
                    ? TextStyles.font14DarkBlueBold
                    : TextStyles.font12DarkBlueNormal,
          ),
        ],
      ),
    );
  }
}
