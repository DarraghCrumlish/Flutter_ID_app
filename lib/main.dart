import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: IdCard()
));
class IdCard extends StatefulWidget {
  const IdCard({super.key});
  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {
          age += 1;
        });},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('ID'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
          padding: const EdgeInsets.all(40),
          color: Colors.grey[850],
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtuphMb4mq-EcVWhMVT8FCkv5dqZGgvn_QiA&s'),
                radius: 100,
              ),
              const Divider(
                height: 100,
                color: Colors.red,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.values[3],
                    children: const <Widget>[
                      Text('NAME:',style: TextStyle(color: Colors.grey, letterSpacing: 2,fontSize: 25)),
                      Text('Darragh Crumlish', style: TextStyle(color: Colors.amber, letterSpacing: 1,fontSize: 25,fontWeight: FontWeight.bold))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.values[3],
                    children: <Widget>[
                    const Text('AGE:',style: TextStyle(color: Colors.grey, letterSpacing: 2,fontSize: 25)),
                    Text('$age', style: const TextStyle(color: Colors.amber, letterSpacing: 1, fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.values[3],
                      children: const <Widget>[
                        Text('GENDER:',style: TextStyle(color: Colors.grey, letterSpacing: 2, fontSize: 25)),
                        Text('MALE', style: TextStyle(color: Colors.amber, letterSpacing: 1, fontSize: 25,fontWeight: FontWeight.bold))
                      ]
                  ),
                ]
              ),
              const SizedBox(height: 150,),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end ,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.email,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text('crumlishdarragh@gmail.com',style: TextStyle(color: Colors.grey, letterSpacing: 2,fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.phone,color: Colors.green,),
                      SizedBox(width: 10,),
                      Text('+353 12-345-6789',style: TextStyle(color: Colors.grey, letterSpacing: 2,fontSize: 20)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.snapchat,color: Colors.yellow,),
                      SizedBox(width: 10,),
                      Text('@darraghcrumlish',style: TextStyle(color: Colors.grey, letterSpacing: 2,fontSize: 20)),
                    ],
                  )
                ],
              )
            ]
          ),
      )
    );
  }
}
