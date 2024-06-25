import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/search/widgets/search_list.dart';
import 'package:job_finder_app/screens/search/widgets/search_app_bar.dart';
import 'package:job_finder_app/screens/search/widgets/search_input.dart';
import 'package:job_finder_app/screens/search/widgets/search_option.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Job> _jobs = [];
  @override
  void initState() {
    super.initState();
    _loadJobs();
  }

  Future<void> _loadJobs() async {
    final String response =
        await rootBundle.loadString('assets/json/jobs.json');
    final List<dynamic> jsonData = jsonDecode(response);
    setState(() {
      _jobs = jsonData.map((job) => Job.fromJson(job)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // List<Job> jobList = []; // Initialize with your list of jobs

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
                  child: SearchList(
                    jobList: _jobs,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
