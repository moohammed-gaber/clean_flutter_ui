import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_flutter/gen/assets.gen.dart';

class PostReactionButton extends StatelessWidget {
  const PostReactionButton(
      {Key? key, required this.name, required this.icon, required this.count})
      : super(key: key);
  final String name, icon;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, height: 24.h, width: 24.w),
        SizedBox(width: 8.w),
        Text('$name ($count)')

      ],
    );
  }
}
