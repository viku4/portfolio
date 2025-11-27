import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/data/models/project_link_model.dart';

class AppButtons extends StatefulWidget {
  final ProjectLinks? links;

  const AppButtons({super.key, required this.links});

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (widget.links?.android != null)
            Container(
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: barlowBold(
                text: "Android",
                color: white,
                size: 15,
                maxLine: 2,
              ),
            ),
          if (widget.links?.ios != null)
            Container(
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: barlowBold(
                text: "iOS",
                color: white,
                size: 15,
                maxLine: 2,
              ),
            ),
        ],
      ),
    );
  }
}
