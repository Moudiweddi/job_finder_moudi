import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: Dimensions.width20,
        right: Dimensions.width20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              width: Dimensions.width45,
              height: Dimensions.height45,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height30,
                  right: Dimensions.width20,
                ),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    const Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 5,
                      height: 5,
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              const Icon(Icons.more_horiz_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
