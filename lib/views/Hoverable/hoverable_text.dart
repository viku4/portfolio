import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/widget.dart';

class HoverableText extends StatefulWidget {
  final String text;

  const HoverableText({super.key, required this.text});

  @override
  _HoverableTextState createState() => _HoverableTextState();
}

class _HoverableTextState extends State<HoverableText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: barlowBold(
        text: widget.text,
        color: _isHovered ? blue : black,
        size: 14,
      ),
    );
  }
}
