import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:flutter_web_portfolio/data/models/skill_model.dart';
import 'package:flutter_web_portfolio/components/custom_cached_network_image.dart';

class SkillDesktop extends StatefulWidget {
  const SkillDesktop({super.key});

  @override
  State<SkillDesktop> createState() => _SkillDesktopState();
}

class _SkillDesktopState extends State<SkillDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth(context),
      height: fullHeight(context),
      padding: EdgeInsets.all(50),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: fullWidth(context) > 1200
              ? 8
              : fullWidth(context) > 800
              ? 6
              : fullWidth(context) > 600
              ? 4
              : 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 4 / 4,
        ),
        itemCount: skills.length,
        itemBuilder: (context, index) {
          Skill skill = skills[index];
          return Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
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
