import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestField extends StatelessWidget {
  var controller;
  String text;
  TestField({this.controller, this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: text,
        prefixIcon: Icon(
          Icons.text_fields,
        ),
      ),
    );
  }
}
