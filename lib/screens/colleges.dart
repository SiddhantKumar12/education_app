import 'package:education_app/widgets/best_colleges_widget.dart';
import 'package:education_app/widgets/best_company_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CollegeScreen extends StatelessWidget {
  const CollegeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Page', style: kAppBarStyle),
        ),
        body: ListView(
          children: [
            BestColleges(),
            BestCompany(),
          ],
        ));
  }
}
