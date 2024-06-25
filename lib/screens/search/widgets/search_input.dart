import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                contentPadding: EdgeInsets.zero,
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
                prefixIcon: Container(
                  padding: EdgeInsets.all(Dimensions.width10),
                  child: Image.asset(
                    'assets/icons/search.png',
                    width: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: Dimensions.width10),
          Container(
            padding: EdgeInsets.all(Dimensions.width10),
            decoration: BoxDecoration(
              color: Theme.of(context).hintColor,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Image.asset(
              'assets/icons/filter.png',
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
