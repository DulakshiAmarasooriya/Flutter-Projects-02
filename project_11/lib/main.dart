import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: FormTest(),
    );
  }
}

class FormTest extends StatefulWidget {
  @override
  _FormTestState createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _name;

  Widget _buildNameField() {
    return TextFormField(
      maxLength: 50,
      decoration: InputDecoration(hintText: 'Name'),
      maxLines: 2,
      validator: (text) {
        if (text!.isEmpty) {
          return 'Name Cannot be empty';
        }
        return null;
      },
      onSaved: (text) {
        _name = text!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                _buildNameField(),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: RaisedButton(
                      child: Text('Save'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                        print('Pressed');
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

RaisedButton({required Text child, required Null Function() onPressed}) {}
