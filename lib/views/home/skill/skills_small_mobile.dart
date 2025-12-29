import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:flutter_web_portfolio/data/models/skill_category_model.dart';
import 'package:flutter_web_portfolio/components/custom_cached_network_image.dart';

class SkillSmallMobile extends StatefulWidget {
  final GlobalKey skillsKey;
  const SkillSmallMobile({super.key, required this.skillsKey});

  @override
  State<SkillSmallMobile> createState() => _SkillSmallMobileState();
}

class _SkillSmallMobileState extends State<SkillSmallMobile> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.skillsKey,
      height: 200,
      width: fullWidth(context),
      padding: EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: fullWidth(context) / 1.1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 15,
                children: List.generate((skills).length, (index) {
                  Skill skill = skills[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blue.withOpacity(.1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          CustomCachedNetworkImage(
                            imageUrl: skill.imageUrl,
                            width: fullWidth(context) / 10,
                            height: fullHeight(context) / 20,
                            fit: BoxFit.contain,
                          ),

                          FittedBox(
                            fit: BoxFit.contain,
                            child: barlowBold(
                              text: skill.name,
                              size: 10,
                              maxLine: 1,
                              color: white,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: LinearProgressIndicator(
                              value: skill.level / 100,
                              minHeight: 5,
                              color: ((skill.level) > 80)
                                  ? Colors.green
                                  : ((skill.level) > 60)
                                  ? Colors.amber
                                  : ((skill.level) > 40)
                                  ? Colors.blue
                                  : Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
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
