import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:flutter_web_portfolio/components/app_buttons.dart';
import 'package:flutter_web_portfolio/data/models/project_model.dart';
import 'package:flutter_web_portfolio/components/custom_cached_network_image.dart';

class ProjectSmallMobile extends StatefulWidget {
  final GlobalKey projectKey;
  const ProjectSmallMobile({super.key, required this.projectKey});

  @override
  State<ProjectSmallMobile> createState() => _ProjectSmallMobileState();
}

class _ProjectSmallMobileState extends State<ProjectSmallMobile> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.projectKey,
      width: fullWidth(context),
      height: fullHeight(context) / 1.3,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              child: Row(
                spacing: 15,
                children: List.generate((project).length, (index) {
                  ProjectModel ds = (project)[index];
                  return ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Stack(
                      children: [
                        Container(
                          color: white,
                          child: Column(
                            spacing: 10,
                            children: [
                              CustomCachedNetworkImage(
                                imageUrl: ds.image ?? "",
                                width: fullWidth(context) / 1.3,
                                height: fullHeight(context) / 3,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                color: white,
                                width: fullWidth(context) / 1.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    barlowBold(
                                      text: ds.title ?? "",
                                      color: black,
                                      size: 20,
                                      maxLine: 2,
                                    ),
                                    Gap(5),

                                    Column(
                                      children: List.generate(
                                        (ds.details ?? []).length,
                                        (index) {
                                          String discription =
                                              (ds.details ?? [])[index];

                                          return Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              spacing: 5,
                                              children: [
                                                barlowBold(
                                                  text: "-",
                                                  color: black,
                                                  size: 15,
                                                ),
                                                Expanded(
                                                  child: barlowRegular(
                                                    text: discription,
                                                    color: black,
                                                    size: 18,
                                                    maxLine: 3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        if (ds.links != null)
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: AppButtons(links: ds.links),
                          ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: IconButton(
              style: IconButton.styleFrom(backgroundColor: backgroundColor),
              icon: Icon(Icons.arrow_back_ios, size: 15, color: white),
              onPressed: () {
                _controller.animateTo(
                  _controller.position.pixels - 200, // scroll left
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          Positioned(
            right: 0,
            child: IconButton(
              style: IconButton.styleFrom(backgroundColor: backgroundColor),
              icon: Icon(Icons.arrow_forward_ios, size: 15, color: white),
              onPressed: () {
                _controller.animateTo(
                  _controller.position.pixels + 200,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
