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
        body: Center(
          child: Stack(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(4),
            height: 500,
            width: 900,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              image: const DecorationImage(
                
                image: NetworkImage(
                    'https://cdn.dribbble.com/users/3020768/screenshots/17316259/media/d156048a2ac186af52d06102548e744e.png'),
                fit: BoxFit.fitWidth,
                opacity: 0.8,
              ),
            ),
              ),
              Positioned(
                top: 42,
                left: 52,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.blue.shade100
                        
                      ),
                      child: Text("Intermedicate", style: TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.normal, fontSize:18 ),),
                    ),
                    const SizedBox(height: 60),
                    const Text("Today's \n challenger", style: TextStyle(fontSize: 65)),
                    const SizedBox(height: 30,),
                    const Text("German Meals ", style: TextStyle(fontSize: 30,color: Color(0xFF1E88E5)  ),),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.diamond_sharp, color: Colors.pink,size: 50,),
                        SizedBox(width: 15,),
                        Text("Take this lession to \n earn a new milestone", style: TextStyle(color: Colors.pink, fontSize: 20),),
                        
                      ],
                    )
                  ],
                )
                )
            ],
          ),
        ),
        );
  }
}

