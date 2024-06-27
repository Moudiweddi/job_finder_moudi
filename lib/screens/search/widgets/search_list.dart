import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/home/widgets/job_details.dart';
import 'package:job_finder_app/screens/home/widgets/job_item.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class SearchList extends StatelessWidget {
  final List<Job> jobList;

  const SearchList({
    super.key,
    required this.jobList,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: Dimensions.height25),
              height: 500,
              child: jobList.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      padding:
                          EdgeInsets.symmetric(horizontal: Dimensions.width10),
                      scrollDirection: Axis.vertical,
                      itemCount: jobList.length,
                      itemBuilder: (context, index) {
                        final job = jobList[index];
                        return GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: true,
                              context: context,
                              builder: (context) =>
                                  //  JobDetails(job: jobList[index]),
                                  JobDetails(job: job),
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
                              showTime: true,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (_, index) {
                        return SizedBox(height: Dimensions.height20);
                      },
                    ),
            ),
          ),
        ],
      ),
    );

    /* Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
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
                      showTime: true,
                    ),
                  ),
                  SizedBox(height: Dimensions.height20),
                ],
              ),
            ),
          );
        */
  }
}
