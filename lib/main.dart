import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'PFCバランスアプリ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex =0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('PFCバランス'),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('P(タンパク質)', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('F(脂質)', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('C(炭水化物)', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('41/216g', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('6/48g', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('48/216g', textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text('カロリー'),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('目標', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('現在', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('残り', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('1918kcal', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('111kcal', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('1807kcol', textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text('食べたものリスト'),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('食べたもの', textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: Text('PFC', textAlign: TextAlign.center),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('おにぎり', textAlign: TextAlign.center),
                        ),
                        Expanded(
                          child: Text('10/10/10', textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('おにぎり', textAlign: TextAlign.center),
                        ),
                        Expanded(
                          child: Text('10/10/10', textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Record'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
