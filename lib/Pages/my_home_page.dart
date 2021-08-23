import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
_incrimentCounter(){ setState(() { _counter++;
            
          });
         
          print(_counter);}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.person),
        title: Text('Real Madrid'),
        actions: [
          IconButton(
              onPressed: () {
                print("Real Madrid wins");
              },
              icon: Icon(Icons.more_vert)),
          IconButton(
              onPressed: () {
                print("hi");
              },
              icon: Icon(Icons.messenger))
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('YOU HAVE PRESSED THIS BUTTON THIS TIMES'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrimentCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
