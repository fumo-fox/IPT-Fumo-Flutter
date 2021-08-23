import 'package:aunt_rafiki/components/round_button.dart';
import 'package:flutter/material.dart';

class BoomColorChangerPage extends StatefulWidget {
  @override
  _BoomColorChangerPageState createState() => _BoomColorChangerPageState();
}

class _BoomColorChangerPageState extends State<BoomColorChangerPage> {
  Color _backgroundColor = Colors.purple;
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.green,
    Colors.pink
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: _backgroundColor,
          leading: Icon(
            Icons.color_lens,
            size: 60,
            color: Colors.white,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print("Real Madrid wins");
                },
                icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Boom-magic color change!'),
          Spacer(),
          Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colorList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RoundButton(
                          onTap: () {
                            setState(() {
                              _backgroundColor = Colors.blue;
                            });
                          },
                          color: colorList[index]),
                    );
                  })),
          Spacer(),
        ]));
  }
}
