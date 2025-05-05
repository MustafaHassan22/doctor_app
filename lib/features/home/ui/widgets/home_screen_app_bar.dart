import 'package:doctor_app/core/helpers/spacing_helper.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18DarkBlueBold),
            verticalSpace(8),
            Text('How Are you Today?', style: TextStyles.font12GrayNormal),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: const Color.fromARGB(255, 240, 240, 245),
          child: SvgPicture.asset('assets/svgs/notofication.svg'),
        ),
      ],
    );
  }
}
