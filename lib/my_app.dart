

import 'package:flutter/material.dart';

import 'pages/boom_collor-changer_page.dart';

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      home: BoomColorChangerPage(),
    );
  }
}
