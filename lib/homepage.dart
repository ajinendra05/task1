import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});

  late int m;
  late int n;
  late String alphbates;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(151, 57, 97, 1),
        title: const Text(
          'User Input',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: Center(
          child: Card(
        margin: const EdgeInsets.all(30),
        child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (int.tryParse(value!) == null) {
                          return 'please enter valid Number';
                        } else if ((int.parse(value) > 100) ||
                            (int.parse(value) < 0)) {
                          return 'please enter valid Number';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        hintText: 'Enter value for m',
                        hintStyle: const TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onSaved: (newValue) {
                        m = int.parse(newValue!);
                      },
                    ),
                  ]),
                ))),
      )),
    );
    ;
  }
}
