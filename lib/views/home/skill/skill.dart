import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/views/home/skill/skill_desktop.dart';
import 'package:flutter_web_portfolio/views/home/skill/skill_tabllet.dart';
import 'package:flutter_web_portfolio/views/home/skill/skill_big_modile.dart';
import 'package:flutter_web_portfolio/views/home/skill/skill_small_mobile.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return SkillDesktop();
        } else if (constraints.maxWidth > 800) {
          return SkillTabllet();
        } else if (constraints.maxWidth > 600) {
          return SkillBigModile();
        } else {
          return SkillSmallMobile();
        }
      },
    );
  }
}
