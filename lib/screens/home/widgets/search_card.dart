import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/search/search.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20, vertical: Dimensions.height30),
      width: double.maxFinite,
      height: Dimensions.height260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radiu30),
        image: const DecorationImage(
          image: AssetImage("assets/images/search_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(
              fontSize: Dimensions.font26,
              color: Colors.white,
            ),
          ),
          SizedBox(height: Dimensions.height10),
          Text(
            'Your can search quickly for\nthe jobs you want.',
            style: TextStyle(
              height: 1.5,
              fontSize: Dimensions.font16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: Dimensions.height20),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radiu30),
              ),
              child: Row(
                children: [
                  Image.asset('assets/icons/search.png',
                      width: Dimensions.width20, height: Dimensions.font20),
                  SizedBox(width: Dimensions.width10),
                  const Text('Search',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
