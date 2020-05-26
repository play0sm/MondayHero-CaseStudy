import 'package:casestudy/design_system/monday_colors.dart';
import 'package:flutter/material.dart';

class MondayFont{
  static TextStyle header({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static TextStyle tabBar({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static TextStyle dropDown({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.blackTwo,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static TextStyle button({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  );

  static TextStyle appBar({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static TextStyle text({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static TextStyle textBold({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static TextStyle review({Color textColor}) => TextStyle(
    fontFamily: 'Lato',
    color: textColor ?? MondayColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}