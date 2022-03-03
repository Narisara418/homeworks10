import 'package:flutter/material.dart';
class CovidModel {
  final String date;
  final String mentter;
  final String comment;
  final String caption;
  final String avatar;
  final String feed;


  CovidModel({
    required this.date,
    required this.comment,
    required this.mentter,
    required this.caption,
    required this.avatar,
    required this.feed,
  });
}