import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class SearchOption extends StatefulWidget {
  SearchOption({super.key});

  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'Development': true,
    'Business': false,
    'Data': false,
    'Design': false,
    'Operation': false,
  };

  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
      height: Dimensions.height50 / 2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: optionMap.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              var res = optionMap[keys[index]] ?? false;
              optionMap[keys[index]] = !res;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.3),
              ),
              color: optionMap[keys[index]] != null &&
                      optionMap[keys[index]] == true
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: Row(
              children: [
                Text(
                  keys[index],
                  style: TextStyle(
                    fontSize: 12,
                    color: optionMap[keys[index]] != null &&
                            optionMap[keys[index]] == true
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                if (optionMap[keys[index]] != null &&
                    optionMap[keys[index]] == true)
                  SizedBox(width: Dimensions.width10),
                if (optionMap[keys[index]] != null &&
                    optionMap[keys[index]] == true)
                  const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12,
                  ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(width: Dimensions.width10),
      ),
    );
  }
}
