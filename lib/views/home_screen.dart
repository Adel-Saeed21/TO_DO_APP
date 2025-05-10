import 'package:flutter/material.dart';

import 'package:todo/controller/cubit/task_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/controller/cubit/task_state.dart';
import 'package:todo/views/widget/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, this.title});

  final String? title;
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To do ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: BlocProvider(
        create: (context) => TaskCubit(),
        child: BlocBuilder<TaskCubit, TaskState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16,
              ),
              child: Column(children: [CustomTextField()]),
            );
          },
        ),
      ),
    );
  }
}
