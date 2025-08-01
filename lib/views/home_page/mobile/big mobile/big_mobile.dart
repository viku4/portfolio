import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/components/slider.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:html' as html;

class BigMobile extends StatefulWidget {
  const BigMobile({super.key});

  @override
  State<BigMobile> createState() => _BigMobileState();
}

class _BigMobileState extends State<BigMobile> {
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: fullWidth(context),
            height: 60,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(.5), Colors.black],
              ),
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
                      image: DecorationImage(
                        image: AssetImage("assets/Indian-removebg-preview.png"),
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
                                return blue;
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
                                return blue;
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
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return blue;
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
                                return blue;
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
                      style: TextButton.styleFrom(backgroundColor: blue),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    key: _homeKey,
                    width: fullWidth(context),
                    height: fullHeight(context),
                    color: black,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I'm trying to manage myself, on just my portfolio.",
                                  style: TextStyle(
                                    color: blue,
                                    fontSize: 35,

                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 3,
                                ),
                                Text(
                                  "Hi, I'm Vikash — a Flutter Developer. I specialize in building high-performance, cross-platform mobile apps. If you're looking for a reliable developer to create or maintain your app, feel free to get in touch.",
                                  style: TextStyle(color: white, fontSize: 12),
                                  maxLines: 4,
                                ),
                                const Gap(10),
                                cvShowOrDownload(),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: black,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/1724424502011-removebg-preview.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: fullWidth(context),
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(.5), Colors.black],
                      ),
                    ),
                    child: barlowBold(text: "Services", color: white, size: 20),
                  ),
                  SizedBox(
                    width: fullWidth(context),
                    // height: fullHeight(context),
                    key: _servicesKey,
                    child: Sliders(),
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
