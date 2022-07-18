import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = "Flutter Exercieses";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        //leading: const Icon(Icons.backspace), // AppBar icerisine icon koyma.
        backgroundColor: appBarColor(),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.abc),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.message))
                ],
              )),
        ],
      ),
      drawer: Drawer(
          width: 175,
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Header",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const ListTile(
                title: Text("1"),
              ),
              const ListTile(
                title: Text("2"),
              ),
              const ListTile(
                title: Text("3"),
              ),
            ],
          )),
    );
  }

  Color appBarColor() => const Color.fromARGB(255, 35, 85, 135);
}
