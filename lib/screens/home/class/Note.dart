import 'package:flutter/material.dart';

class Note{
  Note({required this.title, required this.desc, required this.icon, required this.price});
  final String title;
  final String desc;
  final IconData icon;
  final double price;
}