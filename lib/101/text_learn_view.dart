import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, this.userName}) : super(key: key);
  final String? userName;
  final String name = "PEPE PEPESSON";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Alp Artun Güvendiren",
            style: myTextStyleMethod1(),
          ),
          Text(
            "Hamdi Berke Colakoglu",
            style: myTextStyleMethod1(),
          ),
          Text(
            "Ali Metehan Bas",
            style: myTextStyleMethod1(),
          ),
          Text(
            "Onur Ata Asar",
            style: myTextStyleMethod1(),
          ),
          Text(
            userName ?? 'NULL',
            style: myTextStyleMethod1(),
          ),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: projectColorMethod1),
          ),
        ],
      ),
    );
  }

  MaterialColor get projectColorMethod1 => Colors.red;

  TextStyle myTextStyleMethod1() {
    return const TextStyle(
        backgroundColor: Colors.white12,
        color: Color.fromARGB(255, 85, 247, 255),
        decoration: TextDecoration.lineThrough,
        decorationColor: Colors.black,
        wordSpacing: 2,
        letterSpacing: 3,
        fontStyle: FontStyle.italic,
        fontSize: 24,
        fontWeight: FontWeight.w600);
  }
}
//