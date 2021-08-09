import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:chayay/screens/chayay_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.purple[800],
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chayay',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ChayayRoute(),
    );
  }
}
