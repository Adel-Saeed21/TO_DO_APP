import 'package:flutter/material.dart';
import 'package:todo/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter a task',
        enabledBorder: decore(16),
        errorBorder: decore(12),
        border: decore(16),
      ),
    );
  }

  OutlineInputBorder decore(double rad) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(rad),
    borderSide:const  BorderSide(color: Colors.indigo),
  );
}
