import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('My App'),
              Text(
                'Home',
                style: TextStyle(fontSize: 16),
              ),
              Text('About', style: TextStyle(fontSize: 16)),
              Text('Contact', style: TextStyle(fontSize: 16)),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 40),
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: 'Contact', icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
