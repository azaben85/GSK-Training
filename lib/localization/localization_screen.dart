import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocalizationScreen extends StatelessWidget {
  const LocalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_name'.tr()),
        actions: [
          InkWell(
            child: const Icon(Icons.language),
            onTap: (() {
              if (context.locale == const Locale('en')) {
                context.setLocale(const Locale('ar'));
              } else {
                context.setLocale(const Locale('en'));
              }
            }),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('course_label'.tr()),
              Text(': '),
              Text('course_name'.tr()),
            ],
          ),
          Row(
            children: [
              Text('course_location'.tr()),
              Text(': '),
              Text('location'.tr()),
            ],
          ),
        ],
      ),
    );
  }
}


/*

{
"app_name" : "Localization App",
"course_name" : "GSK",
"location" : "West Bank",
"course_label": "Course Name",
"course_location": "Course Location"

}
*/