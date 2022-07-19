import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: const [
          TextWidget(title: "alp"),
          TextWidget(title: "artun"),
          TextWidget(title: "guvendiren"),
          StatlessWidgetContainer()
        ],
      ),
    );
  }
}

class StatlessWidgetContainer extends StatelessWidget {
  //_StatelessWidgetContainer -> private(only accessed from this class to this method)
  const StatlessWidgetContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(30)),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
