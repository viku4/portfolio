import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/components/blog.dart';
import 'package:flutter_web_portfolio/components/slider.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:gap/gap.dart';
import 'dart:html' as html;

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _blogKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Container(
            width: fullWidth(context),
            height: 60,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              // gradient: LinearGradient(colors: [Colors.white, Colors.black]),
              // color: black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                          _homeKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return textColor;
                              }
                              return white;
                            }),
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      child: barlowBold(text: "Home", size: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                          _servicesKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return textColor;
                              }
                              return white;
                            }),
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      child: barlowBold(text: "Service", size: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                          _blogKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return textColor;
                              }
                              return white;
                            }),
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      child: barlowBold(text: "Blog", size: 15),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return textColor;
                              }
                              return white;
                            }),
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                      child: barlowBold(text: "Work", size: 15),
                    ),
                    const Gap(20),
                    TextButton(
                      style: TextButton.styleFrom(backgroundColor: textColor),
                      onPressed: () {},
                      child: barlowBold(
                        text: "Contact",
                        color: white,
                        size: 15,
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    key: _homeKey,
                    width: fullWidth(context),
                    height: fullHeight(context),
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    // decoration: BoxDecoration(color: black),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "I'm trying to manage myself, on just my portfolio.",
                                        style: TextStyle(
                                          color: textColor,
                                          fontSize: 60,

                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                      Text(
                                        "Hi, I'm Vikash — a Flutter Developer. I specialize in building high-performance, cross-platform mobile apps. If you're looking for a reliable developer to create or maintain your app, feel free to get in touch.",
                                        style: TextStyle(
                                          color: white,
                                          fontSize: 20,
                                        ),
                                        maxLines: 4,
                                      ),
                                      const Gap(10),
                                      cvShowOrDownload(),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ClipRRect(
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: backgroundColor,
                                            shape: BoxShape.circle,
                                        
                                            // border: Border.all(
                                            //   color: white,
                                            //   width: 10,
                                            // ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: textColor.withOpacity(0.5),
                                                blurRadius: 10,
                                                spreadRadius: 2,
                                                offset: Offset(4, 4),
                                                blurStyle: BlurStyle.normal,
                                              ),
                                              //   BoxShadow(
                                              //   color: Colors.red.withOpacity(
                                              //     0.8,
                                              //   ),
                                              //   blurRadius: 0.5,
                                              //   offset: Offset(0.5, 0.5),
                                              //   spreadRadius: 10,
                                              //   blurStyle: BlurStyle.normal,
                                              // ),
                                            ],
                                        
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/logo/pic.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 100,
                                        right: 100,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: textColor,
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: barlowBold(
                                            text: "2.5 Years of Experience",
                                            color: white,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    key: _servicesKey,
                    width: fullWidth(context),
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: blue),
                    child: barlowBold(text: "Services", color: white, size: 20),
                  ),
                  Sliders(),
                  const Gap(20),
                  Container(
                    key: _blogKey,
                    width: fullWidth(context),
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: blue),
                    child: barlowBold(text: "Blog", color: white, size: 20),
                  ),

                  Container(
                    width: double.infinity,
                    color: black,
                    child: Blog(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
