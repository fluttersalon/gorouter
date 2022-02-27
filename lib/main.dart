import 'package:flutter/material.dart';
import 'package:gorouter/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
