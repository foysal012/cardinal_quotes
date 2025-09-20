import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'app_color.dart';
import 'app_style.dart';

class AppUtils{

  // ---- App Border ----
  static final focusBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColor.primaryColor),
    borderRadius: AppStyle.radius(8.0),
  );

  static final enableBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
    borderRadius: AppStyle.radius(8.0),
  );

  static final disableBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
    borderRadius: AppStyle.radius(8.0),
  );

  static final errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: AppStyle.radius(8.0),
  );

  static final focusWithoutBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: AppStyle.radius(8.0),
  );

  static final enableWithoutBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: AppStyle.radius(8.0),
  );

  static final disableWithoutBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: AppStyle.radius(8.0),
  );

  static const focusUnderlineBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: AppColor.primaryColor),
  );

  static const enableUnderlineBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
  );

  static const disableUnderlineBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black12),
  );

  static final boxShadowList = [
    BoxShadow(
      color: Colors.black12,
      offset: const Offset(2.5, 2.5),
      blurRadius: 5.0,
    ),
    const BoxShadow(
        color: Colors.white10,
        offset: Offset(-2.5, -2.5),
        blurRadius: 5.0
    ),
  ];


  //******** DateFormat *****
  static String formatDateYMD(String date){
    return DateFormat('yyyy-MM-dd').format(DateTime.parse(date));
  }

  static String formatDateDMY(String date){
    return DateFormat('dd MMM yyyy').format(DateTime.parse(date));
  }

  // Date Picker
  static Future<DateTime?> pickFromDate(BuildContext context) async {
    return await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime.now(),
    );
  }

  static Future<DateTime?> pickToDate(BuildContext context,DateTime firstDate,{DateTime? lastDate}) async {
    return await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate??DateTime.now(),
    );
  }

  static String getFormattedDate(String? selectedDate) {
    if (selectedDate == null || selectedDate.isEmpty) {
      return '';
    }else{
      return AppUtils.formatDateDMY(selectedDate);
    }
  }

}