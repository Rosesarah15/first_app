import 'package:first_app/flutter_layout_demo.dart';
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(),
              child: const Text(
                'Hello World',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(6.0),
                    ));
                  }),
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                  onPressed: () {
                    print('button pressed');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtherPage()));
                  },
                  child: const Text(
                    'next page',
                    style: TextStyle(color: Colors.red),
                  ));
            }),
            const SizedBox(
              height: 80,
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
