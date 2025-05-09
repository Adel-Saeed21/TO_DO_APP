import 'package:bloc/bloc.dart';
import 'package:todo/Model/task_model.dart';
import 'package:todo/controller/cubit/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  addTask(TaskModel model) {}

  removeTask(int id) {}
  toggleTask() {}
}
