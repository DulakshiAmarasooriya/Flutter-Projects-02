import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  // var items = List<String>.generate(100, (index) => 'Item $index');

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('Brightness Auto'),
              subtitle: Text('Change the Brightness'),
              trailing: Icon(Icons.menu),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Change Image'),
              subtitle: Text('Change the Image'),
              trailing: Icon(Icons.menu),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text('Keyboard Layout'),
              subtitle: Text('Change the Keyboard Layout'),
              trailing: Icon(Icons.menu),
            )
          ],
        ),
      ),
    );
  }
}
