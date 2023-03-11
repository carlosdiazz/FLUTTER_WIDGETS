import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/contador_pages.dart';
//import 'package:flutter_application_1/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: Center(
          //child: HomePage(),
          child: ContadorPage(),
        ));
  }
}
