import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';

void main() async {
  runApp(
    ModularApp(
      module: AppModule(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: HomePage());
  }
}
