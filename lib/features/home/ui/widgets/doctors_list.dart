import 'package:doctor_app/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_list_item.dart';
import 'package:flutter/widgets.dart';

class DoctorsList extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsList({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorListItem(doctorModel: doctorsList?[index]);
        },
      ),
    );
  }
}
