import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          width: 700,
          height: 280,
          color: Colors.grey[350]
          ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Row(
              children: [
                Container(
                   width: 80,
                height: 80,
                alignment: Alignment.center,
                
                child: const Icon(
                  Icons.restaurant_menu , color: Colors.blue
                ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    '1625 Main Street',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('My City, CA 99984', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14)),
                ],
              )
                 
              ],
              
            ), 
            const Divider(),
            Row(
              children: [
              Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                child: const Icon(Icons.contact_phone, color: Colors.blue,),
              ),
              Column(
                
                children: const <Widget>[
                  Text(
                    '(408) 555-1212',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  
                ],
              )
            ],
            ),
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.contact_mail,
                  color: Colors.blue,
                ),
              ),
              Column(
                children: const <Widget>[
                  Text(
                    'costa@example.com',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                  ),
                ],
              )
            ],
          )
          ]),
        )
        ,
        );
  }
}
