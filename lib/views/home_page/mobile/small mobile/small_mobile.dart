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
                      style: TextButton.styleFrom(backgroundColor: blue),
                      onPressed: () {},
                      child: barlowBold(
                        text: "Contact",
                        color: white,
                        size: 15,
                      ),
                    ),
                    const Gap(20),
                    PopupMenuButton<String>(
                      color: white,

                      iconColor: white,
                      onSelected: (value) {
                        if (value == "Home") {
                          Scrollable.ensureVisible(
                            _homeKey.currentContext!,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else if (value == "Service") {
                          Scrollable.ensureVisible(
                            _servicesKey.currentContext!,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        } else {}
                      },
                      itemBuilder:
                          (BuildContext context) => [
                            PopupMenuItem(
                              value: 'Home',

                              child: HoverableText(text: "Home"),
                            ),
                            PopupMenuItem(
                              value: 'Service',

                              child: HoverableText(text: "Service"),
                            ),
                            PopupMenuItem(
                              value: 'Blog',

                              child: HoverableText(text: "Blog"),
                            ),
                            PopupMenuItem(
                              value: 'Work',

                              child: HoverableText(text: "Work"),
                            ),
                          ],
                    ),
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
                    color: black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 30,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: fullWidth(context),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          color: black,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "I'm trying to manage myself, on just my portfolio.",
                                style: TextStyle(
                                  color: blue,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 3,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "Hi, I'm Vikash — a Flutter Developer. I specialize in building high-performance, cross-platform mobile apps. If you're looking for a reliable developer to create or maintain your app, feel free to get in touch.",
                                style: TextStyle(color: white, fontSize: 15),
                                maxLines: 4,
                              ),
                              const Gap(10),
                              cvShowOrDownload(),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Container(
                          width: fullWidth(context),
                          color: black,
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/1724424502011-removebg-preview.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Gap(10),
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
                    key: _servicesKey,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: List.generate(
                          service.length,
                          (index) =>
                              Image.asset(service[index], fit: BoxFit.contain),
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
    );
  }
}
