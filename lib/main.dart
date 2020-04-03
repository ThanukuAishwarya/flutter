import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: new Text('GRID VIEW'),
        ),
        body: Container(
          /* child: CustomScrollView(
              primary: false,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverGrid.count(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('He\'d have you all unravel at the'),
                        color: Colors.green[100],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Heed not the rabble'),
                        color: Colors.green[200],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Sound of screams but the'),
                        color: Colors.green[300],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Who scream'),
                        color: Colors.green[400],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Revolution is coming...'),
                        color: Colors.green[500],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Revolution, they...'),
                        color: Colors.green[600],
                      ),
                       Container(
                         padding: const EdgeInsets.all(8),
                         child: const Text('Revolution, they...'),
                         color: Colors.green[300],
                       ),
                       Container(
                         padding: const EdgeInsets.all(8),
                         child: const Text('Revolution, they...'),
                         color: Colors.green[200],
                       ),
                    ],
                  ),
                ),
              ],
            )*/
           child :GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('He\'d have you all unravel at the'),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text('Sound of screams but the'),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Who scream'),
                  color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Revolution is coming...'),
                  color: Colors.teal[500],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Revolution, they...'),
                  color: Colors.teal[600],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Revolution, they...'),
                  color: Colors.teal[600],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: const Text('Revolution, they...'),
                  color: Colors.teal[600],
                ),
              ],
            )
        ),

      ),
    );
  }
}



