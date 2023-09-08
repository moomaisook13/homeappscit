import 'package:flutter/material.dart';
import 'package:themedemo66/color.dart';
import 'package:themedemo66/pages/cirriculum/chemistry.dart';
import 'package:themedemo66/pages/cirriculum/engineer.dart';
import 'package:themedemo66/pages/cirriculum/it.dart';

class Cirriculum extends StatelessWidget {
  const Cirriculum({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cirriculum'),
          bottom: TabBar(
            indicatorColor: yellowSecondary,
            labelColor: whitePure,
            tabs: [
              Tab(text: 'IT',icon: Icon(Icons.computer, size: 40,)),
              Tab(text: 'Engineer',icon: Icon(Icons.engineering, size: 40,)),
              Tab(text: 'Chemisty',icon: Icon(Icons.science, size: 40,)),
            ]
            ),
        ),
        body: TabBarView(
          children: [
            It(),
            Engineer(),
            Chemistry(),
        ],
        )
      ),
    );
  }
}