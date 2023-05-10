import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:real_estate_mania_yt/resources/color_manager.dart';
import 'package:real_estate_mania_yt/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future selectTimeRange({required BuildContext context}) async {
  var results = await showCalendarDatePicker2Dialog(
    context: context,
    config: CalendarDatePicker2WithActionButtonsConfig(
        calendarType: CalendarDatePicker2Type.range,
        selectedDayHighlightColor: ColorManager.primary,
        closeDialogOnCancelTapped: true
    ),
    dialogSize: const Size(325, 400),
    initialValue: [DateTime.now().add(const Duration(days: 1)), DateTime.now().add(const Duration(days: 3))],
    borderRadius: BorderRadius.circular(AppSize.borderRadius),
    dialogBackgroundColor: ColorManager.offWhite,
  );

  if (results![0]!.isBefore(DateTime.now())) {
    showToast('Select Valid Time Range', ColorManager.toastError);
    selectTimeRange(context: context);
  } else {
    print('Start Date: ${results[0].toString().substring(0, 10)}');
    print('End Date: ${results[1].toString().substring(0, 10)}');
    print('Duration: ${results[1]!.subtract(Duration(days: results[0]!.day))}');
    return results;
  }
}

void showToast(String message, Color color) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0);
}
