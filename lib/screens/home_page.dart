import 'package:education_app/screens/carrer_branch.dart';
import 'package:education_app/widgets/home_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education App', style: kAppBarStyle),
      ),
      body: ListView(
        children: [
          HomeCard(
            title: 'Science',
            imageUrl: 'assets/images/science.jpg',
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CareerBranch();
              }));
            },
          ),
          HomeCard(
            title: 'Commerce',
            imageUrl: 'assets/images/commerce.png',
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CareerBranch();
              }));
            },
          ),
          HomeCard(
            title: 'Arts',
            imageUrl: 'assets/images/arts.jpg',
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CareerBranch();
              }));
            },
          ),
        ],
      ),
    );
  }
}
