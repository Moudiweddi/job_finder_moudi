import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
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
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height20),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width25,
          vertical: Dimensions.height20,
        ),
        itemCount: jobList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final job = jobList[index];

          return Expanded(
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
        },
      ),
    );
  }
}
