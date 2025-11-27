import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';

class DashboardBigMobile extends StatelessWidget {
  final GlobalKey homeKey;
  const DashboardBigMobile({super.key, required this.homeKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeKey,
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
              SizedBox(
                height: fullHeight(context) / 1.5,
                width: fullWidth(context) / 2,
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
                      style: TextStyle(color: white, fontSize: 15),
                      maxLines: 6,
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
                            baseUrl: "https://www.instagram.com/indiancoder.in",
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
                            borderRadius: BorderRadius.circular(10),
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
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "3",
                                  style: TextStyle(color: white, fontSize: 12),
                                ),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(
                                      0,
                                      -4,
                                    ), // moves + upward
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: "  Years of Experience",
                                  style: TextStyle(color: white, fontSize: 10),
                                ),
                              ],
                            ),
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
                            borderRadius: BorderRadius.circular(10),
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
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "10",
                                  style: TextStyle(color: white, fontSize: 12),
                                ),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(
                                      0,
                                      -4,
                                    ), // moves + upward
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: "  Projects Completed",
                                  style: TextStyle(color: white, fontSize: 10),
                                ),
                              ],
                            ),
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
    );
  }
}
