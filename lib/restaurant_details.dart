import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_flutter/theme/colors.dart';
import 'package:responsive_flutter/gen/assets.gen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_flutter/theme/text_styles.dart';
import 'package:responsive_flutter/widgets/category_blue_card.dart';
import 'package:responsive_flutter/widgets/custom_rating_bar_indicator.dart';
import 'package:responsive_flutter/widgets/post_reaction_button.dart';
import 'package:responsive_flutter/widgets/working_hours_tile.dart';

class RestaurantDetails extends StatelessWidget {
  RestaurantDetails({Key? key}) : super(key: key);
  final styles = TextStyles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Transform.scale(
            scale: 1.1,
            child: Image.asset(
              Assets.images.restaurantJpg.path,
              fit: BoxFit.cover,
              height: 256.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18).r,
            child: Row(
              children: [
                Text(
                  'Café Greco',
                  style: TextStyle(
                      color: Color(0xff2A2D34),
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                Spacer(),
                CustomRatingBarIndicator(),
              ],
            ),
          ),
          Wrap(
            children: ['Fast Food', 'Burger', 'Meat']
                .map((category) => CategoryBlueCard(category: category))
                .toList(),
          ),
          Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 18).r,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                  color: Colors.blueGrey.withOpacity(0.1),
                )
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 19, horizontal: 15).r,
                child: Row(
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10)
                                .r,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            backgroundColor: Color(0xffEFF9FE)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(Assets.icons.map),
                            SizedBox(width: 10.w),
                            Text(
                              'Get Direction',
                              style: TextStyle(color: AppColors.darkBlue),
                            ),
                          ],
                        )),
                    Spacer(),
                    SizedBox(
                      height: 44.h,
                      width: 44.w,
                      child: FloatingActionButton(
                        elevation: 0,
                        onPressed: () {},
                        backgroundColor: AppColors.green,
                        child: SvgPicture.asset(Assets.icons.call,
                            height: 20.h, width: 20.w),
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 60.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3).r,
              child: Row(
                children: [
                  ...[
                    Assets.images.gallery1.path,
                    Assets.images.gallery2.path,
                    Assets.images.gallery3.path,
                    Assets.images.gallery4.path,
                  ]
                      .map((e) => Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10).w),
                                  child: Image.asset(
                                    e,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 11.w),
                            ],
                          )))
                      .toList(),
                  Expanded(
                    child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10).w)),
                        color: AppColors.lightGrey,
                        child: Center(
                            child: Text(
                          'View\nGallery',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              color: AppColors.darkBlue,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ))),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 188.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 18),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: styles.medium12,
                            ),
                            Spacer(),
                            Text(
                              'Started from 5\$',
                              style: styles.medium12,
                            ),
                            Spacer(),
                            Text(
                              'Rateing',
                              style: styles.medium12,
                            ),
                            SizedBox(height: 7.h),
                            CustomRatingBarIndicator(),
                            SizedBox(height: 4.h),
                            Text('4.5 / 5 (200 People)',
                                style: styles.regular12),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Working Hours',
                            style: styles.medium12,
                          ),
                          Spacer(),
                          ...['Sat', 'Sun', 'Mon', 'Sun', 'Mon']
                              .map((e) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: WorkingHoursTile(
                                        to: TimeOfDay(
                                          hour: 22,
                                          minute: 00,
                                        ),
                                        from: TimeOfDay(hour: 10, minute: 00),
                                        day: e),
                                  ))
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About',
                    style: styles.medium12.copyWith(fontSize: 14),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                        'You Can Submit your visa application now the required documents must be prepared tow or three days before biometric You Can Submit your visa application now the required documents must be prepared tow or three days before biometric You Can Submit your visa application now the required documents must be prepared tow or three days before biometric You Can Submit your visa application now the required documents must be prepared tow or three days before biometric',
                    style: styles.regular12.copyWith(fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Visitor Reviews',
                style: styles.medium12.copyWith(fontSize: 14)),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(Assets.icons.avatar),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ahmed Ali'),
                                  CustomRatingBarIndicator(),
                                ],
                              ),
                              Spacer(),
                              Text('15 June 2022')
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, bottom: 12).r,
                            child: Text(
                                'Great Place in Egypt I love it so Much and I will visit it again'),
                          ),
                          Image.asset(
                            Assets.images.post.path,
                            height: 100.h,
                            width: 100.w,
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            children: [
                              PostReactionButton(
                                  name: 'Like', icon: Assets.icons.like, count: 12),
                              SizedBox(width: 24.w),
                              PostReactionButton(
                                  name: 'Reply',
                                  icon: Assets.icons.comment,
                                  count: 3),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31).r,
            child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size(313.w, 40.h),
                  backgroundColor: AppColors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {},
                child: Text(
                  'Leave Comment',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          SizedBox(height: 20.h),
        ]),
      ),
    );
/*
    return Scaffold(
      body: SingleChildScrollView(
        child:
      ),
    );
*/
  }
}
