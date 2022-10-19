import 'package:flutter/material.dart';
import 'package:personarandom/Pages/Home_Page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'PROFILE RANDOM',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(title: 'PROFILE RANDOM')
      },
    );
  }
}