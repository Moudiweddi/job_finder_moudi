import 'package:flutter/material.dart';
import 'package:job_finder_app/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final String company;
  final String logoUrl;
  final String isMark;
  final String title;
  final String location;
  final String url;
  final String time;
  final bool? showTime;
  final List<String> req;

  const JobItem(
    jobList, {
    super.key,
    required this.company,
    required this.logoUrl,
    required this.isMark,
    required this.title,
    required this.location,
    required this.url,
    required this.time,
    required this.req,
    this.showTime = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      width: 250, // Adjust width to fit the content

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.network(logoUrl,
                        height: 50, width: 50, fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 5),
                  Text(company,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ],
              ),
              //  Add bookmark icon
              Icon(
                  isMark == 'true'
                      ? Icons.bookmark
                      : Icons.bookmark_outline_outlined,
                  color: isMark == 'true'
                      ? Theme.of(context).primaryColor
                      : Colors.black),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(Icons.location_on_outlined, location),
              if (showTime == true) ...[
                const SizedBox(width: 10),
                IconText(Icons.access_time_outlined, time),
              ],
            ],
          ),
          /*Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          IconText(Icons.location_on_outlined, location),
          */
        ],
      ),
    );
  }
}
