import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardLEarnView extends StatelessWidget {
  const CardLEarnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Learn View",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontStyle: FontStyle.italic)),
        leading: const Icon(Icons.back_hand),
      ),
      body: Column(
        children: const [
          Padding(
              padding: CardUtilities.paddingLeft,
              child: _CustomCard(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: CardUtilities.paddingTextTop,
                    child: Text(
                      "Pepe",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
          Padding(
              padding: CardUtilities.paddingLeft,
              child: _CustomCard(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: CardUtilities.paddingTextTop,
                    child: Text(
                      "Pepe",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
          Padding(
            padding: CardUtilities.paddingLeft,
            child: _CustomCard(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Padding(
                  padding: CardUtilities.paddingTextTop,
                  child: Text(
                    "Pepe",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding: CardUtilities.paddingLeft,
              child: _CustomCard(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: CardUtilities.paddingTextTop,
                    child: Text(
                      "Pepe",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )),
          Padding(
              padding: CardUtilities.paddingLeft,
              child: _CustomCard(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: CardUtilities.paddingTextTop,
                    child: Text(
                      "Pepe",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class CardUtilities {
  static const marginCard = EdgeInsets.all(10);
  static const paddingLeft = EdgeInsets.only(left: 135);
  static const paddingTextTop = EdgeInsets.only(top: 40);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: CardUtilities.marginCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: child);
  }
}
