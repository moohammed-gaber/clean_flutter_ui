import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_flutter/theme/colors.dart';
import 'package:responsive_flutter/gen/assets.gen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_flutter/widgets/category_blue_card.dart';

class CustomRatingBarIndicator extends StatelessWidget {
  const CustomRatingBarIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4,
      itemBuilder: (context, index) => SvgPicture.asset(
        Assets.icons.activeStar,
      ),
      itemCount: 5,
      itemSize: 25.0.w,
    );
  }
}
