import 'package:flutter/material.dart';

class Engineer extends StatelessWidget {
  const Engineer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Engineer'),
      ),
      body: Column(
        children: [
          Text('Engineer'),
        ],
      ),
    );
  }
}