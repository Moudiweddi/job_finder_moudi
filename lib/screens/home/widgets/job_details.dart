import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/utils/dimensions.dart';

class JobDetails extends StatelessWidget {
  final Job job;
  const JobDetails({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height600,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width20,
        vertical: Dimensions.height20,
      ),
      margin: EdgeInsets.only(
        top: Dimensions.height10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radiu30),
          topRight: Radius.circular(Dimensions.radiu30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: Dimensions.height10 / 2,
              width: Dimensions.width60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.grey.withOpacity(0.3),
              ),
            ),
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: Dimensions.height40,
                    width: Dimensions.width40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.network(job.logoUrl,
                        height: Dimensions.height50,
                        width: Dimensions.width50,
                        fit: BoxFit.cover),
                  ),
                  SizedBox(width: Dimensions.width10),
                  Text(
                    job.company,
                    style: TextStyle(
                      fontSize: Dimensions.font16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                      job.isMark == "true"
                          ? Icons.bookmark
                          : Icons.bookmark_outline,
                      color: job.isMark == "true"
                          ? Theme.of(context).primaryColor
                          : Colors.black),
                  SizedBox(width: Dimensions.width10),
                  const Icon(Icons.more_horiz_outlined, color: Colors.black),
                ],
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Text(
            job.title,
            style: TextStyle(
              fontSize: Dimensions.font26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: Dimensions.height20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, color: Colors.yellow),
                  SizedBox(width: Dimensions.width10 / 2),
                  Text(
                    job.location,
                    style: TextStyle(
                      fontSize: Dimensions.font16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(width: Dimensions.width10),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined, color: Colors.yellow),
                  SizedBox(width: Dimensions.width10 / 2),
                  Text(
                    job.time,
                    style: TextStyle(
                      fontSize: Dimensions.font16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Dimensions.height20),
          const Text('Requirements',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: Dimensions.height10),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              thickness: 3,
              radius: const Radius.circular(3),
              interactive: true,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...job.req.map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(
                            vertical: Dimensions.height10 / 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: Dimensions.height10),
                              height: Dimensions.height10 / 2,
                              width: Dimensions.width10 / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: Dimensions.width10 / 2),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 300),
                              child: Text(
                                e,
                                style: TextStyle(fontSize: Dimensions.font16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: Dimensions.height20),
                      height: Dimensions.height40,
                      width: Dimensions.width300,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                          ),
                        ),
                        child: const Text('Apply Now'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
