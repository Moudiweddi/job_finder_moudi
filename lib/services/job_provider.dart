import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/models/job.dart';

class JobProvider extends ChangeNotifier {
  List<Job> _jobs = [];

  List<Job> get jobs => _jobs;

  JobProvider() {
    _loadJobs();
  }

  Future<void> _loadJobs() async {
    final String response =
        await rootBundle.loadString('assets/json/jobs.json');
    final List<dynamic> jsonData = jsonDecode(response);
    _jobs = jsonData.map((job) => Job.fromJson(job)).toList();
    notifyListeners();
  }
}
