// search_page.dart
import 'package:flutter/material.dart';
import 'package:job_finder_app/services/job_provider.dart';
import 'package:provider/provider.dart';

import 'package:job_finder_app/screens/search/widgets/search_list.dart';
import 'package:job_finder_app/screens/search/widgets/search_app_bar.dart';
import 'package:job_finder_app/screens/search/widgets/search_input.dart';
import 'package:job_finder_app/screens/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jobProvider = Provider.of<JobProvider>(context);
    final jobs = jobProvider.jobs;

    return Scaffold(
      body: SafeArea(
        child: Stack(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchAppBar(),
                const SearchInput(),
                SearchOption(),
                Expanded(
                  child: SearchList(jobList: jobs),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
