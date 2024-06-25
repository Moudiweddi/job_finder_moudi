import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/home/widgets/home_app_bar.dart';
import 'package:job_finder_app/screens/home/widgets/search_card.dart';
import 'package:job_finder_app/screens/home/widgets/tag_list.dart';
import 'package:job_finder_app/screens/home/widgets/job_list.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.grey.withOpacity(0.1)),
              ),
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SearchCard(),
              TagList(),
              JobList(),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).hintColor,
        elevation: 0,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: Dimensions.iconSize25),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work_outline_outlined,
                  size: Dimensions.iconSize25),
              label: 'jobs',
            ),
            const BottomNavigationBarItem(
              icon: Text(''),
              label: '',
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(Icons.chat_bubble_outline, size: Dimensions.iconSize25),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined,
                  size: Dimensions.iconSize25),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
