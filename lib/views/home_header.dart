import 'dart:html' as html;
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';

class HomeHeader extends StatefulWidget {
  final GlobalKey homeKey;
  final GlobalKey projectKey;

  const HomeHeader({
    super.key,
    required this.homeKey,
    required this.projectKey,
  });

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth(context),
      height: 60,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(color: backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    html.window.location.reload();
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      // color: white,
                      image: DecorationImage(
                        image: AssetImage("assets/logo/white_logo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    widget.homeKey.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.resolveWith<Color>((
                    states,
                  ) {
                    if (states.contains(WidgetState.hovered)) {
                      return textColor;
                    }
                    return white;
                  }),
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                child: barlowBold(text: "Home", size: 15),
              ),
              TextButton(
                onPressed: () {
                  Scrollable.ensureVisible(
                    widget.projectKey.currentContext!,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.resolveWith<Color>((
                    states,
                  ) {
                    if (states.contains(WidgetState.hovered)) {
                      return textColor;
                    }
                    return white;
                  }),
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                child: barlowBold(text: "Projects", size: 15),
              ),
              TextButton(
                onPressed: () {
                  // Scrollable.ensureVisible(
                  //   _blogKey.currentContext!,
                  //   duration: const Duration(milliseconds: 500),
                  //   curve: Curves.easeInOut,
                  // );
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.resolveWith<Color>((
                    states,
                  ) {
                    if (states.contains(WidgetState.hovered)) {
                      return textColor;
                    }
                    return white;
                  }),
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                child: barlowBold(text: "Blog", size: 15),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.resolveWith<Color>((
                    states,
                  ) {
                    if (states.contains(WidgetState.hovered)) {
                      return textColor;
                    }
                    return white;
                  }),
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                ),
                child: barlowBold(text: "Work", size: 15),
              ),

              const Gap(20),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: textColor),
                onPressed: () async {
                  await launchEmail();
                },
                child: barlowBold(text: "Contact", color: white, size: 15),
              ),
              const Gap(20),
            ],
          ),
        ],
      ),
    );
  }
}
