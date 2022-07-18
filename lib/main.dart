import 'package:flutter/material.dart';
import 'package:flutter_learn/101/app_bar_view.dart';
import 'package:flutter_learn/101/button_learn.dart';
import 'package:flutter_learn/101/container_learn_view.dart';
import 'package:flutter_learn/101/koyde_deneme.dart';
import 'package:flutter_learn/101/statefulWidgetLearn.dart';
import 'package:flutter_learn/101/text_learn_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            //scaffoldBackgroundColor: Colors.red,
            //iconTheme: IconThemeData(color: Colors.red)
            ),
        home: const AppBarView()

        // Scaffold(
        //   appBar: AppBar(title: const Text("Flutter Exercises")),
        //   body: const ButtonLearn(),
        // )
        //Scaffold(
        //   appBar: AppBar(
        //     title: Text("My English Words Applicaton"),
        //   ),
        //   body: Center(
        //     child: StatefulWidgetLearn(),
        //   ),
        // ),
        );
  }
}
