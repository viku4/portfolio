import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/views/home/skill/skills_tablet.dart';
import 'package:flutter_web_portfolio/views/home/skill/skills_desktop.dart';
import 'package:flutter_web_portfolio/views/home/skill/skills_big_mobile.dart';
import 'package:flutter_web_portfolio/views/home/skill/skills_small_mobile.dart';

class Skills extends StatefulWidget {
  final GlobalKey skillsKey;
  const Skills({super.key, required this.skillsKey});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return SkillDesktop(skillsKey: widget.skillsKey);
        } else if (constraints.maxWidth > 800) {
          return SkillTablet(skillsKey: widget.skillsKey);
        } else if (constraints.maxWidth > 600) {
          return SkillBigMobile(skillsKey: widget.skillsKey);
        } else {
          return SkillSmallMobile(skillsKey: widget.skillsKey);
        }
      },
    );
  }
}
