import 'package:flutter/material.dart';
import 'package:responsive_flutter/theme/colors.dart';
import 'package:responsive_flutter/theme/text_styles.dart';

class WorkingHoursTile extends StatelessWidget {
  const WorkingHoursTile(
      {Key? key, required this.to, required this.from, required this.day})
      : super(key: key);
  final TimeOfDay to, from;
  final String day;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: AppColors.green,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 10),
        Text('$day (${from.format(context)} - ${to.format(context)}',
        style: TextStyles().regular12,
        ),
      ],
    );
  }
}
