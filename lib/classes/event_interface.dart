import 'package:flutter/material.dart';

abstract class EventInterface {
  DateTime getDate();
  String? getTitle();
  String? getDescription();
  String? getLocation();
  Widget? getIcon();
  Widget? getDot();
  int? getId();
  dynamic getData();
}