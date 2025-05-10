import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/constant.dart';
import 'package:todo/controller/cubit/task_cubit.dart';
import 'package:todo/views/widget/custom_text_field.dart';

class HomeScreenBody extends StatelessWidget {
 const HomeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        children: [
          CustomTextField(),

          ElevatedButton(
            onPressed: () {
              context.read<TaskCubit>().addTask(controller.text);
            },
            child: const Text(
              "Add Task",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
