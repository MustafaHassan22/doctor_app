import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
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
                    Text('Dr. Mohamed '),
                    verticalSpace(4),
                    Text('Degree | 0111111111111'),
                    verticalSpace(4),

                    Text('Email@email.com', style: TextStyles.font12GrayMeduim),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
