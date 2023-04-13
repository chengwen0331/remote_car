import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: ' '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String operation = " ";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 234, 108),
      appBar: AppBar(
        title: const Text("WiFi Car Controller")
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [

              Container(
                height: 180,
                width: 350,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)),
                    boxShadow: [BoxShadow(blurRadius: 10, 
                    color: Colors.black,
                    offset: Offset(1, 3))]                
                ),
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      SizedBox(
                            width: 85,
                            child:ElevatedButton(
                              onPressed: (){onPressed ("Forward");}, 
                              child: const Text("Forward")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 85,
                            child:ElevatedButton(                         
                              onPressed: (){onPressed ("Left");}, 
                              child: const Text("Left")),
                          ),
                          SizedBox(
                            width: 85,
                            child:ElevatedButton(
                              onPressed: (){onPressed ("Stop");},
                               child: const Text("Stop")),
                          ),
                          SizedBox(
                            width: 85,
                            child:ElevatedButton(
                              onPressed: (){onPressed ("Right");}, 
                              child: const Text("Right")),
                          ),
                        ],
                      ),
                      SizedBox(
                            width: 85,
                            child:ElevatedButton(
                              onPressed: (){onPressed ("Reverse");}, 
                              child: const Text("Reverse")),
                      ),
                    ]
                  ),
              ),
            
            Text(
              operation,
              style: const TextStyle(fontSize: 32, fontWeight:FontWeight.bold),
            ),
          ]),           
      ),      
    );         
  }

  void onPressed(String s) {
    operation = s;
    setState(() {
      
    });
  }
}