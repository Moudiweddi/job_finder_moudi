import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final List<String> tagsList = ['All', '⚡ Popular', '⭐ Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
      height: Dimensions.height40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: tagsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width20,
                    vertical: Dimensions.height10 / 2),
                decoration: BoxDecoration(
                  color: selected == index
                      ? Theme.of(context).primaryColor.withOpacity(0.3)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  border: Border.all(
                    color: selected == index
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withOpacity(0.3),
                  ),
                ),
                child: Text(
                  tagsList[index],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: Dimensions.radius15 / 2);
          }),
    );
  }
}
