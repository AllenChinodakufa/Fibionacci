import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double getPressure(
  double diastolicpressure,
  double systolicpressure,
) {
  // Add your function code here!
  var result = double.parse((systolicpressure / diastolicpressure).toString())
      .toStringAsFixed(2);
  return double.parse(result).toDouble();
}

double convertTo(
  double diastolicPressure,
  double systolicPressure,
) {
  // Add your function code here!
  if ((systolicPressure / diastolicPressure) > 1) {
    var result = double.parse(
            ((10 - (systolicPressure / diastolicPressure)) / 10).toString())
        .toStringAsFixed(2);
    return double.parse(result).toDouble();
  } else {
    var result = double.parse((systolicPressure / diastolicPressure).toString())
        .toStringAsFixed(2);
    return double.parse(result).toDouble();
  }
}

double convertTempToPercentage(double temperature) {
  // Add your function code here!
  var result = double.parse((temperature / 100).toString()).toStringAsFixed(2);
  print(result);
  return double.parse(result).toDouble();
}

String getTemperatureReport(double temperature) {
  // Add your function code here!
  String result;
  if (temperature < 37.0) {
    result =
        "You temperature is too low for normal range, please go to the doctor for checkup.";
  } else if (temperature > 37.0) {
    result =
        "You temperature is too high for normal range, drink water to cool off and please go to the doctor for checkup.";
  } else if (temperature == 37.0) {
    result = "You temperature is in normal range, you are good to go.";
  }

  return result;
}

String getPressureReport(
  double systolicPressure,
  double diastolicPressure,
) {
  // Add your function code here!
  String result;
  if (systolicPressure < diastolicPressure) {
    result =
        "This is dangerous your blood pressure is too high at $diastolicPressure - $systolicPressure mmHg, if repeated tests show the same result, you need to check with your doctor. Systolic Pressure cannot be greater than Diastolic Pressure.";
  } else {
    result =
        "You blood pressure is in normal range at $diastolicPressure - $systolicPressure mmHg, if , you are good to go.";
  }

  return result;
}

String provideTextForSymptom(String symptom) {
  // Add your function code here!
  var result =
      'You didn\'t enter this for your symptoms, if you wish to add this, go to home page and create click create symptom on the top menu.';
  switch (symptom.toLowerCase()) {
    case 'headache':
      result =
          'Headaches are a symptom of blood sugar,  this includes trouble thinking clearly or concentrating loss of consciousness, seizure, or coma. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'frequent urination':
      result =
          'Frequent Urination is associated with hyperglycemia or high blood sugar,  this includes fatigue, nausea, and vomiting. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'hunger':
      result =
          'Hunger is another symptom of blood sugar,  among others, we hope you are taking enough food if you have difficulty eating. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'unexplained fatigue':
      result =
          'You don\'t seem to be able to explain your fatigue, this is not good. This incorporates inconvenience thinking plainly or concentrating. We highly recommend you go see a doctor for such symptom.';
      break;
    case 'sweating':
      result =
          'Headaches are a symptom of blood sugar,  this includes trouble thinking clearly or concentrating loss of consciousness, seizure, or coma. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'dizziness':
      result =
          'Dizziness are a symptom of blood pressure, this includes nervousness, sweating, among others. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'shortness of breath':
      result =
          'Shortness Of Breath are a symptom of blood pressure,  this includes trouble thinking clearly or concentrating loss of consciousness, seizure, or coma. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'pale skin':
      result =
          'Pale Skin are a symptom of blood sugar,this includes trouble thinking clearly or concentrating loss of consciousness, seizure, or coma. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'skin tingling':
      result =
          'Skin Tingling are a symptom of blood sugar,this includes trouble thinking clearly or concentrating loss of consciousness, seizure, or coma. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'chest pain':
      result =
          'Chest Pain are a symptom of blood pressure, this includes trouble thinking clearly or concentrating loss of consciousness, seizure, or coma. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'vision problems':
      result =
          'Are you having trouble seeing, if that\'s the case then you have a symptom of blood pressure in your system. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
    case 'sweatblood in urine':
      result =
          'Blood in your urine is a symptom of blood pressure. We highly recommend you disregard home remedies and go to see the nearest specialist for treatment.';
      break;
  }

  return result;
}

String getDayleftTillEndOfMonth() {
  // get number of left days until the month ends
  String month = DateFormat("MMM").format(DateTime.now().toUtc());
  int daysLeft;
  if (month == "Jan") {
    daysLeft = 31 - DateTime.now().day;
  } else if (month == "Feb") {
    daysLeft = 28 - DateTime.now().day;
  } else if (month == "Mar") {
    daysLeft = 31 - DateTime.now().day;
  } else if (month == "Apr") {
    daysLeft = 30 - DateTime.now().day;
  } else if (month == "May") {
    daysLeft = 31 - DateTime.now().day;
  } else if (month == "Jun") {
    daysLeft = 30 - DateTime.now().day;
  } else if (month == "Jul") {
    daysLeft = 31 - DateTime.now().day;
  } else if (month == "Aug") {
    daysLeft = 31 - DateTime.now().day;
  } else if (month == "Sep") {
    daysLeft = 30 - DateTime.now().day;
  } else if (month == "Oct") {
    daysLeft = 31 - DateTime.now().day;
  } else if (month == "Nov") {
    daysLeft = 30 - DateTime.now().day;
  } else if (month == "Dec") {
    daysLeft = 31 - DateTime.now().day;
  }
  return "You have days $daysLeft left till the month ends, remember to take your medication and refill it when the month ends";
}

bool isGreater(
  double systolicPressure,
  double diastolicPressure,
) {
  // Add your function code here!
  return (systolicPressure > diastolicPressure);
}

bool validatePressure(
  double systolicPressure,
  double diastolicPressure,
) {
  // Add your function code here!
  if ((systolicPressure > 100) && (systolicPressure < 140)) {
    if ((diastolicPressure > 60) && (diastolicPressure < 90)) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

String validatePressureText(
  double systolicPressure,
  double diastolicPressure,
) {
  // Add your function code here!
  if ((systolicPressure > 100) && (systolicPressure < 140)) {
    if ((diastolicPressure > 60) && (diastolicPressure < 90)) {
      return "You pressure results are realistic";
    } else {
      return "You diastolic pressure must range between 60 - 90.";
    }
  } else {
    return "You systolic pressure must range between 100 - 140.";
  }
}
