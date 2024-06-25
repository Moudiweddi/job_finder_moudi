import 'package:flutter/material.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: Dimensions.width20,
        right: Dimensions.width20,
        bottom: Dimensions.height20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome home',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              Text(
                'Annie Bryant',
                style: TextStyle(
                  fontSize: Dimensions.font26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: Dimensions.height40, right: Dimensions.height40),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: Dimensions.iconSize30,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4.0),
                        height: Dimensions.height10,
                        width: Dimensions.width10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClipOval(
                child: Image.asset('assets/images/avatar.png',
                    width: Dimensions.width50, height: Dimensions.height50),
              )
            ],
          ),
        ],
      ),
    );
  }
}
