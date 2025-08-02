import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/const/global.dart';
import 'package:flutter_web_portfolio/const/widget.dart';
import 'package:flutter_web_portfolio/data/models/blog_post.dart';
import 'package:flutter_web_portfolio/utils/screen_utils.dart';
import 'package:gap/gap.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(getBlog.length, (index) {
          BlogPost ds = getBlog[index];
          return Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 2.5,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: barlowBold(
                    text: ds.title,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
                const Gap(20),
                barlowRegular(
                  text: ds.description,
                  color: Colors.black,
                  size: 12,
                  maxLine: 4,
                ),
                const Gap(5),
                barlowRegular(
                  text: ds.content,
                  color: Colors.black,
                  size: 15,
                  maxLine: 4,
                ),
                const Gap(5),
                Row(
                  children: [
                    barlowBold(
                      text: "Author :- ",
                      color: Colors.black,
                      size: 15,
                    ),
                    barlowRegular(
                      text: ds.author,
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
                Row(
                  children: [
                    barlowBold(text: "Date :- ", color: Colors.black, size: 15),
                    barlowRegular(
                      text:
                          DateTime.parse(
                            ds.date.toString(),
                          ).toLocal().toString().split(' ')[0],
                      color: Colors.black,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
