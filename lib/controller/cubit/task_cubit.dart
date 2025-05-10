import 'package:bloc/bloc.dart';
import 'package:todo/Model/task_model.dart';
import 'package:todo/controller/cubit/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  addTask(TaskModel model) {
    emit(UpdateTask([...state.taskList, model]));
  }

  removeTask(int id) {
    final List<TaskModel> newLust =
        state.taskList.where((e) => e.id != id).toList();
    emit(UpdateTask(newLust));
  }

  toggleTask(int id) {
    final List<TaskModel> newList =
        state.taskList.map((e) {
          return e.id == id ? e.copywith(isCompleted: !e.isCompleted) : e;
        }).toList();
    emit(UpdateTask(newList));
  }
}
