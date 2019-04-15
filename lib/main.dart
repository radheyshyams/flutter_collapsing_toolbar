import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collapsing Tollbar',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            floating: true,
            expandedHeight: 255.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/image/balloonflower.jpg',
                height: 225.0,
                width: 350.0,
                fit: BoxFit.fill,
              ),
              title: Text('Collapsing Toolbar'),
            ),
          ),

          
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.topLeft,
                  color: Colors.pink[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 30
            ),
          ),
        ],
      ),
    );
  }
}
