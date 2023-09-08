// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:themedemo66/color.dart';
import 'package:themedemo66/pages/appbarmain.dart';
import 'package:themedemo66/pages/listtilemenu.dart';
import 'package:themedemo66/pages/maindrawer.dart';
import 'package:themedemo66/pages/newsbody.dart';
import 'package:themedemo66/pages/drawerheader.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBarMain(data: data),
        bottomNavigationBar: buildTabBar(),
        drawer: MainDrawer(data: data),
        body: TabBarView(
          children: const [
            NewsBody(),
            NewsBody(),
            NewsBody(),
          ],
        ),
      ),
    );
  }

  Padding buildTabBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TabBar(
        tabs: const [
          Tab(
            text: 'News',
            icon: Icon(Icons.newspaper),
          ),
          Tab(
            text: 'Cirriculumns',
            icon: Icon(Icons.school),
          ),
          Tab(
            text: 'Contact',
            icon: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
