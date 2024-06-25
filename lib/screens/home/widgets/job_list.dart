import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/home/widgets/job_details.dart';
import 'package:job_finder_app/screens/home/widgets/job_item.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class JobList extends StatefulWidget {
  const JobList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JobListState createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  List<Job> _jobs = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _loadJobs();
  }

// Load jobs from JSON
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
    return Expanded(
      child: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: Dimensions.height25),
                height:
                    Dimensions.height150, // Adjust height to fit the content
                child: _jobs.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.separated(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        scrollDirection: Axis.horizontal,
                        itemCount: _jobs.length,
                        itemBuilder: (context, index) {
                          final job = _jobs[index];
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: true,
                                context: context,
                                builder: (context) =>
                                    JobDetails(job: _jobs[index]),
                              );
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: JobItem(
                                job,
                                company: job.company,
                                logoUrl: job.logoUrl,
                                isMark: job.isMark,
                                title: job.title,
                                location: job.location,
                                url: job.url,
                                time: job.time,
                                req: job.req,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, index) {
                          return SizedBox(width: Dimensions.width15);
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
