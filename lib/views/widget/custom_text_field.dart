import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});
  final TextEditingController controller = TextEditingController();

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
    borderSide: BorderSide(color: Colors.indigo),
  );
}
