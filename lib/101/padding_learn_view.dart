import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:
            PaddingArrangement.paddingAll + PaddingArrangement.paddingVertical,
        child: Column(
          children: [
            const Text("data"),
            Padding(
              padding: PaddingArrangement.paddingAll +
                  const EdgeInsets.only(right: 35),
              child: Container(
                height: 100,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Container(
                height: 100,
                color: Colors.white,
              ),
            ),
            Container(
              height: 100,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class PaddingArrangement {
  static const paddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const paddingAll = EdgeInsets.all(20);
}
