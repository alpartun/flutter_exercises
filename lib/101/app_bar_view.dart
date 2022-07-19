import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = "Flutter Exercises";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    var deneme = "asd";

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(), //iconlarin colorunu ver,
        title: Text(_title),
        //leading: const Icon(Icons.backspace), // AppBar icerisine icon koyma.
        backgroundColor:
            appBarColor(), // transparent kullanilirsa appbar ve body bir gibi gorunur
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle
            .light, // ustteki saat wifi pil siyah ya da beyaz theme e gore ayarlama
        actions: [
          // Sag tarafi kullanmaya imkan saglar
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.message))
              ],
            ),
          ),
          const Center(
            child: CircularProgressIndicator(),
          )
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
