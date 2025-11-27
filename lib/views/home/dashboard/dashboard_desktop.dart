import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';

class HomeDesktop extends StatelessWidget {
  final GlobalKey homeKey;
  const HomeDesktop({super.key, required this.homeKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeKey,
      width: fullWidth(context),
      height: fullHeight(context),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I'm trying to manage myself, on just my portfolio.",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                  Text(
                    "Hi, I'm Vikash — a Flutter & Node.js Developer. I specialize in building high-performance mobile apps and scalable backend APIs. If you're looking for a reliable developer to create or maintain your app or backend system, feel free to get in touch.",
                    style: TextStyle(color: white, fontSize: 20),
                    maxLines: 4,
                  ),
                  const Gap(10),
                  cvShowOrDownload(),
                  const Gap(20),
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
                  ),
                  Positioned(
                    top: 10,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
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
                              style: TextStyle(color: white, fontSize: 20),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -4), // moves + upward
                                child: Text(
                                  "+",
                                  style: TextStyle(color: white, fontSize: 15),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "  Years of Experience",
                              style: TextStyle(color: white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 50,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
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
                              style: TextStyle(color: white, fontSize: 20),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0, -4), // moves + upward
                                child: Text(
                                  "+",
                                  style: TextStyle(color: white, fontSize: 15),
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "  Projects Completed",
                              style: TextStyle(color: white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
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

/// services



       // Container(
        //   // key: _servicesKey,
        //   width: fullWidth(context),
        //   height: 60,
        //   alignment: Alignment.center,
        //   child: barlowBold(text: "My Services", color: white, size: 20),
        // ),
        // const Gap(30),
        // SizedBox(
        //   width: fullWidth(context) / 1.5,
        //   height: fullHeight(context),
        //   child: Column(
        //     children: [
        //       Row(
        //         children: [
        //           Expanded(
        //             flex: 2,
        //             child: Container(
        //               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //               padding: EdgeInsets.symmetric(
        //                 horizontal: 20,
        //                 vertical: 5,
        //               ),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10),
        //                 color: backgroundColor,
        //                 boxShadow: [
        //                   BoxShadow(
        //                     color: textColor.withOpacity(0.8),
        //                     blurRadius: 10,
        //                     spreadRadius: 2,
        //                     offset: Offset(2, 2),
        //                     blurStyle: BlurStyle.normal,
        //                   ),
        //                 ],
        //               ),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   barlowBold(
        //                     text: "Android App",
        //                     color: blue,
        //                     size: 20,
        //                   ),
        //                   barlowRegular(
        //                     text:
        //                         "Built using Flutter for native Android performance.Supports modern UI/UX standards.Compatible with a wide range of devices.",
        //                     color: white,
        //                     maxLine: 4,
        //                     size: 15,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //           Expanded(child: Container()),
        //         ],
        //       ),
        //       Container(
        //         width: 1,
        //         height: 100,
        //         decoration: BoxDecoration(
        //           color: white,
        //           borderRadius: BorderRadius.circular(5),
        //         ),
        //       ),

        //       Row(
        //         children: [
        //           Expanded(child: Container()),
        //           Expanded(
        //             flex: 2,
        //             child: Container(
        //               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //               padding: EdgeInsets.symmetric(
        //                 horizontal: 20,
        //                 vertical: 5,
        //               ),
        //               decoration: BoxDecoration(
        //                 color: backgroundColor,
        //                 boxShadow: [
        //                   BoxShadow(
        //                     color: textColor.withOpacity(0.8),
        //                     blurRadius: 10,
        //                     spreadRadius: 2,
        //                     offset: Offset(2, 2),
        //                     blurStyle: BlurStyle.normal,
        //                   ),
        //                 ],
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   barlowBold(text: "Ios App", color: blue, size: 20),
        //                   barlowRegular(
        //                     text:
        //                         "Smooth and responsive app for iOS devices. with Apple’s UI guidelines in mind.Tested on iPhone",
        //                     color: white,
        //                     maxLine: 4,
        //                     size: 15,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //       Container(
        //         width: 1,
        //         height: 100,
        //         decoration: BoxDecoration(
        //           color: white,
        //           borderRadius: BorderRadius.circular(5),
        //         ),
        //       ),
        //       Row(
        //         children: [
        //           Expanded(
        //             flex: 2,
        //             child: Container(
        //               margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        //               padding: EdgeInsets.symmetric(
        //                 horizontal: 20,
        //                 vertical: 5,
        //               ),
        //               decoration: BoxDecoration(
        //                 color: backgroundColor,
        //                 boxShadow: [
        //                   BoxShadow(
        //                     color: textColor.withOpacity(0.8),
        //                     blurRadius: 10,
        //                     spreadRadius: 2,
        //                     offset: Offset(2, 2),
        //                     blurStyle: BlurStyle.normal,
        //                   ),
        //                 ],
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   barlowBold(text: "Website", color: blue, size: 20),
        //                   barlowRegular(
        //                     text:
        //                         "Fully responsive web app using Flutter Web.Accessible via all major browsers.Clean, modern, and mobile-friendly.",
        //                     color: white,
        //                     maxLine: 4,
        //                     size: 15,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //           Expanded(child: Container()),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

        // const Gap(20),
        // Container(
        //   // key: _blogKey,
        //   width: fullWidth(context),
        //   height: 60,
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(color: blue),
        //   child: barlowBold(text: "Blog", color: white, size: 20),
        // ),
     