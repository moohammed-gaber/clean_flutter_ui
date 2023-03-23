import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_flutter/restaurant_details.dart';
import 'package:responsive_flutter/theme/theme.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 690),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: AppTheme().theme,
          home:  RestaurantDetails(),
        );
      },
    );
  }
}
