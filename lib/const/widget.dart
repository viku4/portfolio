import 'dart:developer';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_web_portfolio/const/colors.dart';

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

Widget cvShowOrDownload({double? size}) => TextButton(
  style: TextButton.styleFrom(backgroundColor: textColor),
  onPressed: () {
    const url = 'assets/cv/Vikash Kumar (1)-2.pdf';
    html.AnchorElement(href: url)
      ..setAttribute('download', 'Vikash_CV.pdf')
      ..click();
  },
  child: barlowBold(text: "DownLoad CV", color: white, size: size ?? 15),
);

Future redirectWeb({required String baseUrl}) async {
  final Uri url = Uri.parse(baseUrl);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> launchEmail({
  String subject = '',
  String body = '',
  String toEmail = 'kumarvikash91569@gmail.com',
}) async {
  final gmailUrl = Uri.parse(
    'https://mail.google.com/mail/?view=cm&to=$toEmail&su=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
  );

  try {
    if (await canLaunchUrl(gmailUrl)) {
      await launchUrl(gmailUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch Gmail';
    }
  } catch (e) {
    log('Error launching Gmail: $e');
  }
}
