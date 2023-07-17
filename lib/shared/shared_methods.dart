import 'package:another_flushbar/flushbar.dart';
import 'package:epkl/shared/shared_values.dart';
import 'package:epkl/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatIndonesianDate(DateTime dateTime, {bool hideDays = false}) {
  final List<String> monthNamesIndonesian = [
    '',
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  int day = dateTime.day;
  String month = monthNamesIndonesian[dateTime.month];
  int year = dateTime.year;

  return '${hideDays ? '' : day} $month $year';
}

dynamic getColorForBackground(Color? backgroundColor, {bool isText = true}) {
  if (backgroundColor == null) {
    return isText ? blackText : blackColor;
  }

  final double luminance = backgroundColor.computeLuminance();
  if (luminance > 0.5) {
    if (isText) return blackText;
    return blackColor;
  }
  return isText ? whiteText : whiteColor;
}

void showSnackbar(BuildContext context, String message, {isError = true}) {
  Flushbar(
    backgroundColor: isError ? redErrorColor : greenColor,
    message: message,
    duration: Duration(seconds: 5),
    flushbarPosition: FlushbarPosition.TOP,
  ).show(context);
}

String formatDateAndTime(String datetime) {
  List<String> days = [
    "Senin",
    "Selasa",
    "Rabu",
    "Kamis",
    "Jumat",
    "Sabtu",
    "Minggu",
  ];
  DateTime parsedDatetime = DateTime.parse(datetime);
  String formattedTime = DateFormat("h:mm a").format(parsedDatetime);

  return "${days[parsedDatetime.weekday - 1]}, ${formatIndonesianDate(parsedDatetime)} ${formattedTime}";
}
