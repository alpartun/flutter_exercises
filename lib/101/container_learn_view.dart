import 'package:flutter/material.dart';

class ContainerLearnView extends StatelessWidget {
  const ContainerLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
            width: 100,
            height: 100,
            child: Text(
              "Onur Ata Asar",
              style: TextStyle(
                  wordSpacing: 2,
                  letterSpacing: 3,
                  backgroundColor: Colors.amber),
            )),
        const SizedBox.square(
          dimension: 100,
          child: Text(
            "Ali Metehan Bas",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              backgroundColor: Colors.red,
            ),
          ),
        ),
        Container(
          width: 120,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(10),
          constraints:
              const BoxConstraints(maxWidth: 150, minHeight: 10, minWidth: 10),
          decoration: BoxDecoration(
              gradient: linearGradientMethodGana(),
              borderRadius: BorderRadius.circular(18),
              // color: Colors.amber,
              boxShadow: [boxShadowMethod1()]),
          child: const Text(
            "Alp Artun Guvendiren 12312312312",
            maxLines: 10,
          ),
        ),
      ],
    );
  }

  LinearGradient linearGradientMethodGana() {
    return const LinearGradient(
        colors: [Colors.green, Colors.red, Colors.black]);
  }

  BoxShadow boxShadowMethod1() {
    return const BoxShadow(
        offset: Offset(0.2, 3),
        color: Color.fromARGB(230, 255, 0, 21),
        blurRadius: 0.69,
        blurStyle: BlurStyle.normal);
  }
}
