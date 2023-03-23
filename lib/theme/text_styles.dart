import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
// singleton
  TextStyles._();
  static final TextStyles _instance = TextStyles._();
  factory TextStyles() => _instance;

  TextStyle get medium12 => TextStyle(
      color: Color(0xff2A2D34), fontSize: 12, fontWeight: FontWeight.w500);
  TextStyle get regular12 => TextStyle(
      color: Color(0xff878C98), fontSize: 12, fontWeight: FontWeight.w400);
}
