import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: const <Widget>[
          Text("I'm dedicating every day to you"),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
        ],
      ),
    );
  }
}
