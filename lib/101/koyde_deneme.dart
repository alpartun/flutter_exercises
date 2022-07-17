import 'package:flutter/material.dart';

class KoydeDeneme extends StatelessWidget {
  const KoydeDeneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selamlar Koyden Denemeler"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Text("asd"),
          ),
          Container(
            color: Colors.red,
            child: IconButton(
              icon: Icon(Icons.abc),
              onPressed: () {},
              hoverColor: Colors.blue,
            ),
          ),
          Row(
            children: [
              Container(
                child: Text("Row Deneme1"),
              ),
              Container(
                child: Text("Deneme2"),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.access_alarm_outlined))
            ],
          )
        ],
      ),
    );
  }
}
