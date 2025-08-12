import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/components/slider.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:gap/gap.dart';
import 'dart:html' as html;

class HomeTablet extends StatefulWidget {
  const HomeTablet({super.key});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();
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
            decoration: BoxDecoration(),
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
                        // Scrollable.ensureVisible(
                        //   _blogKey.currentContext!,
                        //   duration: const Duration(milliseconds: 500),
                        //   curve: Curves.easeInOut,
                        // );
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
                      onPressed: () async {
                        await launchEmail();
                      },
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
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: fullHeight(context) / 1.5,
                              width: fullWidth(context) / 2,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "I'm trying to manage myself, on just my portfolio.",
                                    style: TextStyle(
                                      color: textColor,
                                      fontSize: 35,

                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 3,
                                  ),
                                  Text(
                                    "Hi, I'm Vikash — a Flutter Developer. I specialize in building high-performance, cross-platform mobile apps. If you're looking for a reliable developer to create or maintain your app, feel free to get in touch.",
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 15,
                                    ),
                                    maxLines: 5,
                                  ),
                                  const Gap(10),
                                  cvShowOrDownload(),
                                ],
                              ),
                            ),
                            Container(
                              height: fullHeight(context) / 1.5,
                              width: fullWidth(context) / 2,

                              decoration: BoxDecoration(
                                color: backgroundColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: textColor.withOpacity(0.8),
                                    blurRadius: 10,
                                    spreadRadius: 5,
                                    offset: Offset(4, 4),
                                    blurStyle: BlurStyle.normal,
                                  ),
                                ],
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/logo/pic.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await redirectWeb(
                                          baseUrl:
                                              "https://www.instagram.com/indiancoder.in",
                                        );
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: textColor.withOpacity(0.8),
                                              blurRadius: 10,
                                              spreadRadius: 2,
                                              offset: Offset(2, 2),
                                              blurStyle: BlurStyle.normal,
                                            ),
                                          ],
                                          color: backgroundColor,
                                          shape: BoxShape.circle,

                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                              "assets/socialmedia/instagram.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () async {
                                        await redirectWeb(
                                          baseUrl: "https://github.com/viku4/",
                                        );
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: textColor.withOpacity(0.8),
                                              blurRadius: 10,
                                              spreadRadius: 2,
                                              offset: Offset(2, 2),
                                              blurStyle: BlurStyle.normal,
                                            ),
                                          ],
                                          color: backgroundColor,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                              "assets/socialmedia/github.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Gap(20),
                                    InkWell(
                                      onTap: () async {
                                        await redirectWeb(
                                          baseUrl:
                                              "https://www.linkedin.com/in/vikash-srivastav-68b126233/",
                                        );
                                      },
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: textColor.withOpacity(0.8),
                                              blurRadius: 10,
                                              spreadRadius: 2,
                                              offset: Offset(2, 2),
                                              blurStyle: BlurStyle.normal,
                                            ),
                                          ],
                                          color: backgroundColor,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                              "assets/socialmedia/linkdin.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: backgroundColor,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: cColor.withOpacity(.5),
                                              blurRadius: 5,
                                              spreadRadius: 2,
                                              offset: Offset(2, 2),
                                              blurStyle: BlurStyle.normal,
                                            ),
                                          ],
                                        ),
                                        child: barlowBold(
                                          text: "2.5+ Years of Experience",
                                          color: white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                    const Gap(20),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: backgroundColor,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: textColor.withOpacity(.5),
                                              blurRadius: 5,
                                              spreadRadius: 2,
                                              offset: Offset(2, 2),
                                              blurStyle: BlurStyle.normal,
                                            ),
                                          ],
                                        ),
                                        child: barlowBold(
                                          text: "10+ Projects Completed",
                                          color: white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ],
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
                    child: barlowBold(text: "My Services", color: white, size: 20),
                  ),
                  const Gap(30),
                  SizedBox(
                    width: fullWidth(context) / 1.5,
                    height: fullHeight(context),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: backgroundColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: textColor.withOpacity(0.8),
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                      offset: Offset(2, 2),
                                      blurStyle: BlurStyle.normal,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    barlowBold(
                                      text: "Android App",
                                      color: blue,
                                      size: 20,
                                    ),
                                    barlowRegular(
                                      text:
                                          "Built using Flutter for native Android performance.Supports modern UI/UX standards.Compatible with a wide range of devices.",
                                      color: white,
                                      maxLine: 4,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 100,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),

                        Row(
                          children: [
                            Expanded(child: Container()),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: backgroundColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: textColor.withOpacity(0.8),
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                      offset: Offset(2, 2),
                                      blurStyle: BlurStyle.normal,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    barlowBold(
                                      text: "Ios App",
                                      color: blue,
                                      size: 20,
                                    ),
                                    barlowRegular(
                                      text:
                                          "Smooth and responsive app for iOS devices. with Apple’s UI guidelines in mind.Tested on iPhone",
                                      color: white,
                                      maxLine: 4,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 1,
                          height: 100,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: backgroundColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: textColor.withOpacity(0.8),
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                      offset: Offset(2, 2),
                                      blurStyle: BlurStyle.normal,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    barlowBold(
                                      text: "Website",
                                      color: blue,
                                      size: 20,
                                    ),
                                    barlowRegular(
                                      text:
                                          "Fully responsive web app using Flutter Web.Accessible via all major browsers.Clean, modern, and mobile-friendly.",
                                      color: white,
                                      maxLine: 4,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                      ],
                    ),
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
