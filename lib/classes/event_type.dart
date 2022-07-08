import 'package:flutter/material.dart';

import 'event_interface.dart';

class CrmEventType implements EventInterface {
  final DateTime date;
  final String? title;
  final String? description;
  final String? location;
  final Widget? icon;
  final Widget? dot;
  final int? id;
  final dynamic data;

  CrmEventType({
    this.id,
    required this.date,
    this.title,
    this.description,
    this.location,
    this.icon,
    this.dot,
    this.data,
  });

  @override
  bool operator ==(dynamic other) {
    return this.date == other.date &&
        this.title == other.title &&
        this.description == other.description &&
        this.location == other.location &&
        this.icon == other.icon &&
        this.dot == other.dot &&
        this.data == other.data &&
        this.id == other.id;
  }

  @override
  int get hashCode => hashValues(date, description, location, title, icon, id);

  @override
  DateTime getDate() {
    return date;
  }

  @override
  int? getId() {
    return id;
  }

  @override
  Widget? getDot() {
    return dot;
  }

  @override
  Widget? getIcon() {
    return icon;
  }

  @override
  String? getTitle() {
    return title;
  }

  @override
  String? getDescription() {
    return description;
  }

  @override
  String? getLocation() {
    return location;
  }

  @override
  dynamic getData() {
    return data;
  }
}
