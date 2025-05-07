import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: id_card()
));
class id_card extends StatelessWidget {
  const id_card({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('this is an Appbar'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              Text('NAME:'),
              Text('AGE:'),
              Text('GENDER')
            ],
          )
      )
    );
  }
}
