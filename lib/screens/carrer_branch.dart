import 'package:education_app/models/career _countries_model.dart';
import 'package:education_app/screens/countries_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CareerBranch extends StatelessWidget {
  const CareerBranch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Choose your branch', style: kAppBarStyle)),
        body: ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: career.length,
            itemBuilder: (context, index) {
              final data = career[index];
              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CountriesScreen();
                  }));
                },
                leading: CircleAvatar(
                    child: Text(data.toString().toString().split(" ")[0][0])),
                title: Text(data.name),
                subtitle: Text('Available Colleges: ' + data.coursecount),
              );
            }));
  }
}
