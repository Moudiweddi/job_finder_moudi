import 'package:flutter/material.dart';
import 'package:job_finder_app/services/job_provider.dart';
import 'package:provider/provider.dart';
import 'package:job_finder_app/screens/home/widgets/job_details.dart';
import 'package:job_finder_app/screens/home/widgets/job_item.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class JobList extends StatelessWidget {
  const JobList({super.key});

  @override
  Widget build(BuildContext context) {
    final jobProvider = Provider.of<JobProvider>(context);
    final jobs = jobProvider.jobs;

    return Expanded(
      child: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: Dimensions.height25),
                height: Dimensions.height150,
                child: jobs.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.separated(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.width10),
                        scrollDirection: Axis.horizontal,
                        itemCount: jobs.length,
                        itemBuilder: (context, index) {
                          final job = jobs[index];
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: true,
                                context: context,
                                builder: (context) =>
                                    JobDetails(job: jobs[index]),
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
