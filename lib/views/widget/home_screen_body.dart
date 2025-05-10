import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/constant.dart';
import 'package:todo/controller/cubit/task_cubit.dart';
import 'package:todo/controller/cubit/task_state.dart';
import 'package:todo/views/widget/custom_text_field.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: Column(
              children: [
                const CustomTextField(),

                ElevatedButton(
                  onPressed: () {
                    if (controller.text.isEmpty) {
                      return;
                    }
                    context.read<TaskCubit>().addTask(controller.text);
                    controller.clear();
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

                Expanded(
                  child: ListView.builder(
                    itemCount: state.taskList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.taskList[index].title),

                        leading: Checkbox(
                          value: state.taskList[index].isCompleted,
                          onChanged: (_) {
                            context.read<TaskCubit>().toggleTask(
                              state.taskList[index].id,
                            );
                          },
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            context.read<TaskCubit>().removeTask(
                              state.taskList[index].id,
                            );
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
