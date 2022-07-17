import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              color: Colors.blue.shade200,
              padding: const EdgeInsets.all(10),
              focusColor: Colors.green,
              hoverColor: Colors.yellowAccent,
              iconSize: 41,
              splashColor: Colors.blue,
              tooltip: "hi",
              splashRadius: 41,
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              label: const Text("Fav"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
              )),
          TextButton(
            onPressed: () {},
            style: Utilities().buttonStyle(),
            child: Text("TextButton",
                style: Theme.of(context).textTheme.subtitle2),
          ),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(10),
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.deepPurpleAccent,
                primary: Colors.black,
              ),
              child: const Text("Outlined Button")),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 20, bottom: 20),
                child: Text(
                  "Elevated Button",
                  style: Theme.of(context).textTheme.headline6,
                ),
              )),
          InkWell(
            onTap: () {},
            child: const Text("data"),
          )
        ],
      ),
    );
  }
}

class Utilities {
  ButtonStyle buttonStyle() {
    return ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) =>
            states.contains(MaterialState.pressed)
                ? Colors.green
                : Colors.red));
  }
}
