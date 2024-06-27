import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:job_finder_app/screens/home/home.dart';
import 'package:job_finder_app/services/job_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => JobProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder App',
      theme: ThemeData(
        primaryColor: const Color(0xFF43B1B7),
        hintColor: const Color(0xFFFED408),
      ),
      home: const HomePage(),
    );
  }
}
