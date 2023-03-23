import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class CategoryBlueCard extends StatelessWidget {
  const CategoryBlueCard({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(8),
      color: AppColors.lightBlue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(category,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlue, fontSize: 12)),
      ),
    );
  }
}
