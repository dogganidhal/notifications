import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:notifications/utils/colors.dart';

class Adkar with ChangeNotifier {
  String id;
  String arabicText;
  int repeat;
  static String url;
  List<Adkar> list = [];

  Adkar({
    this.id,
    this.arabicText,
    this.repeat,
  });

  factory Adkar.fromJson(Map<String, dynamic> parsedJson) {
    return Adkar(
        id: parsedJson['Id'],
        arabicText: parsedJson['ARABIC_TEXT'],
        repeat: parsedJson['REPEAT']);
  }

  Adkar.fromMap(Map<String, dynamic> data) {
    id = data['Id'];
    arabicText = data['ARABIC_TEXT'];
    repeat = data['REPEAT'];
  }

  
}
