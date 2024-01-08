import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

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
        body: Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Hello World',
                style: TextStyle(fontSize: 40),
              ),
              height: 300,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Hello World',
                style: TextStyle(fontSize: 20),
              ),
              height: 300,
            ),
          ],
        ),
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
