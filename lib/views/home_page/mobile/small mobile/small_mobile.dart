import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:flutter_web_portfolio/views/Hoverable/hoverable_text.dart';
import 'package:gap/gap.dart';
import 'dart:html' as html;

class SmallMobile extends StatefulWidget {
  const SmallMobile({super.key});

  @override
  State<SmallMobile> createState() => _SmallMobileState();
}

class _SmallMobileState extends State<SmallMobile> {
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Column(
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
                          style: TextButton.styleFrom(backgroundColor: blue),
                          onPressed: () {},
                          child: barlowBold(
                            text: "Contact",
                            color: white,
                            size: 15,
                          ),
                        ),
                        const Gap(10),
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
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        // decoration: BoxDecoration(color: black),
                        child: Column(
                          children: [
                            Padding(
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
                                      fontSize: 25,
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
                                    maxLines: 6,
                                  ),
                                  const Gap(10),
                                  cvShowOrDownload(),
                                  const Gap(20),
                                  Row(
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
                                                color: textColor.withOpacity(
                                                  0.8,
                                                ),
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
                                            baseUrl:
                                                "https://github.com/viku4/",
                                          );
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: textColor.withOpacity(
                                                  0.8,
                                                ),
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
                                                color: textColor.withOpacity(
                                                  0.8,
                                                ),
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
                                ],
                              ),
                            ),
                            const Gap(10),
                            Expanded(
                              child: ClipRRect(
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 20,
                                      ),
                                      child: Container(
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
                                            image: AssetImage(
                                              "assets/logo/pic.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 60,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ),
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
                                          text: "2.5 Years of Experience",
                                          color: white,
                                          size: 10,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 60,
                                      left: 30,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ),
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
                                          size: 10,
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
                      Container(
                        width: fullWidth(context),
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(.5),
                              Colors.black,
                            ],
                          ),
                        ),
                        child: barlowBold(
                          text: "Services",
                          color: white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: fullWidth(context),
                        key: _servicesKey,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: List.generate(
                              service.length,
                              (index) => Image.asset(
                                service[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const Gap(100),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20),
                ),
                color: backgroundColor,

                boxShadow: [
                  BoxShadow(
                    color: textColor.withOpacity(.5),
                    blurRadius: 5,
                    spreadRadius: 5,
                    offset: Offset(2, 2),
                    blurStyle: BlurStyle.normal,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          if (states.contains(MaterialState.hovered)) {
                            return textColor;
                          }
                          return white;
                        },
                      ),
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: barlowBold(text: "Home", size: 15),
                  ),
                  const Gap(5),
                  TextButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        _servicesKey.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          if (states.contains(MaterialState.hovered)) {
                            return textColor;
                          }
                          return white;
                        },
                      ),
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: barlowBold(text: "Service", size: 15),
                  ),
                  const Gap(5),
                  TextButton(
                    onPressed: () {
                      // Scrollable.ensureVisible(
                      //   _blogKey.currentContext!,
                      //   duration: const Duration(milliseconds: 500),
                      //   curve: Curves.easeInOut,
                      // );
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          if (states.contains(MaterialState.hovered)) {
                            return textColor;
                          }
                          return white;
                        },
                      ),
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: barlowBold(text: "Blog", size: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) {
                          if (states.contains(MaterialState.hovered)) {
                            return textColor;
                          }
                          return white;
                        },
                      ),
                      overlayColor: MaterialStateProperty.all(
                        Colors.transparent,
                      ),
                    ),
                    child: barlowBold(text: "Work", size: 15),
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
