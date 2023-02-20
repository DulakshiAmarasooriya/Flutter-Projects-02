import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    title.text = 'Flutter';
    String text = title.text;
    return Scaffold(
      appBar: AppBar(
        title: TextField(
            keyboardType: TextInputType.text,
            controller: title,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  title.text = '';
                },
              ),
              border: InputBorder.none,
              filled: true,
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white70),
            )),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: TextField(
      //           cursorColor: Colors.blue,
      //           maxLength: 8,
      //           // onChanged: (text) {
      //           //   print(text);
      //           // },
      //           // onSubmitted: (text){
      //           //   print(text)
      //           // },
      //           controller: title,
      //           decoration: InputDecoration(prefixIcon: Icon(Icons.search)),
      //           //obscureText: true,
      //           keyboardType: TextInputType.number,
      //           style: TextStyle(fontSize: 22.0),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: TextField(
      //           maxLength: 8,
      //           autofocus: true,
      //           keyboardType: TextInputType.number,
      //           style: TextStyle(fontSize: 22.0),
      //           enabled: false,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
