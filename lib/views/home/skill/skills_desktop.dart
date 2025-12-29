import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:flutter_web_portfolio/components/app_buttons.dart';
import 'package:flutter_web_portfolio/data/models/project_model.dart';
import 'package:flutter_web_portfolio/data/models/skill_category_model.dart';
import 'package:flutter_web_portfolio/components/custom_cached_network_image.dart';

class SkillDesktop extends StatefulWidget {
  final GlobalKey skillsKey;
  const SkillDesktop({super.key, required this.skillsKey});

  @override
  State<SkillDesktop> createState() => _SkillDesktopState();
}

class _SkillDesktopState extends State<SkillDesktop> {

  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.skillsKey,
      width: fullWidth(context),
      padding: EdgeInsets.all(50),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4 / 4,
        ),
        itemCount: skills.length,
        itemBuilder: (context, index) {
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
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                  barlowBold(
                    text: skill.name,
                    size: 10,
                    maxLine: 2,
                    color: white,
                    textAlign: TextAlign.center,
                  ),
                  LinearProgressIndicator(
                    value: skill.level / 100,
                    minHeight: 5,
                    // backgroundColor: white,
                    color: ((skill.level) > 80)
                        ? Colors.green
                        : ((skill.level) > 60)
                        ? Colors.amber
                        : ((skill.level) > 40)
                        ? Colors.blue
                        : Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // Align(
                  //   alignment: AlignmentGeometry.centerLeft,
                  //   child: Text(
                  //     "${skill.level}%",
                  //     style: const TextStyle(fontSize: 13),
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
