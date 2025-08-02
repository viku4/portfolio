import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'dart:html' as html;

Widget barlowBold({
  String text = "",
  double? size,
  Color? color,
  int? maxLine,
  TextOverflow? overflow,
  TextAlign? textAlign,
  bool underline = false,
}) => Text(
  text,
  overflow: overflow ?? TextOverflow.ellipsis,
  maxLines: maxLine ?? 1,
  textAlign: textAlign,
  textScaler: const TextScaler.linear(1),
  style: TextStyle(
    color: color,
    fontSize: size ?? 14,
    fontFamily: "Barlow",
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    decoration: underline ? TextDecoration.underline : null,
  ),
);
Widget barlowRegular({
  String text = "",
  double? size,
  Color? color,
  int? maxLine,
  TextOverflow? overflow,
  TextAlign? textAlign,
  bool underline = false,
}) => Text(
  text,
  overflow: overflow ?? TextOverflow.ellipsis,
  maxLines: maxLine ?? 1,
  textAlign: textAlign,
  textScaler: const TextScaler.linear(1),
  style: TextStyle(
    color: color,
    fontSize: size ?? 14,
    fontFamily: "Barlow",
    fontStyle: FontStyle.normal,
    decoration: underline ? TextDecoration.underline : null,
  ),
);



Widget cvShowOrDownload() => TextButton(
  style: TextButton.styleFrom(backgroundColor: blue),
  onPressed: () {
    const url = 'assets/cv/Vikash Kumar (1)-2.pdf'; // path inside web/assets
    html.AnchorElement(href: url)
      ..setAttribute('download', 'Vikash_CV.pdf')
      ..click();
  },
  child: barlowBold(text: "DownLoad CV", color: white, size: 15),
);
