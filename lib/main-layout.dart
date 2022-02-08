// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Body(),
    ));
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const titleText = Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );

    const subTitle = Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text(
        'Pavlova is a meringue-based dessert named after the Russian ballerina '
        'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
        'topped with fruit and whipped cream.',
        textAlign: TextAlign.center,
      ),
    );

    final ratings = Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.green[400],
        ),
        Icon(
          Icons.star,
          color: Colors.green[400],
        ),
        Icon(
          Icons.star,
          color: Colors.green[400],
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        ),
        Icon(
          Icons.star,
          color: Colors.black,
        ),
      ],
    );

    const reviews = Text(
      '120 Reviews',
      style: TextStyle(fontWeight: FontWeight.bold),
    );

    final userFeedback = Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ratings,
          Container(
            child: reviews,
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          )
        ],
      ),
    );

    const defaultTextStyles = TextStyle(
      color: Colors.black,
    );

    final iC = Column(
      children: [
        Icon(
          Icons.kitchen,
          color: Colors.green[500],
          size: 34.0,
        ),
        Padding(
          padding: EdgeInsets.only(top: 4),
          child: const Text(
            'PREP:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6),
          child: const Text('25 min'),
        ),
      ],
    );

    final iconList = DefaultTextStyle(
        style: defaultTextStyles,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              iC,
              iC,
              iC,
            ],
          ),
        ));

    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [titleText, subTitle, userFeedback, iconList],
      ),
    );
  }
}
