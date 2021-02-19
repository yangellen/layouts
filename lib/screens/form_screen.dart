import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: 'Enter Text', border: OutlineInputBorder()),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  return null;
                }
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState.validate()) {
                formKey.currentState.save();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Processing Data'),
                ));
              }
            },
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
