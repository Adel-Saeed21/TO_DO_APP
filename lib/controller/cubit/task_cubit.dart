import 'package:bloc/bloc.dart';
import 'package:todo/Model/task_model.dart';
import 'package:todo/controller/cubit/task_state.dart';
import 'package:uuid/uuid.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  addTask(String model) {
    TaskModel taskModel = TaskModel(
      id: const Uuid().v4(),
      title: model,
      isCompleted: false,
    );
    emit(UpdateTask([...state.taskList, taskModel]));
  }

  removeTask(String id) {
    final List<TaskModel> newLust =
        state.taskList.where((e) => e.id != id).toList();
    emit(UpdateTask(newLust));
  }

  toggleTask(String id) {
    final List<TaskModel> newList =
        state.taskList.map((e) {
          return e.id == id ? e.copywith(isCompleted: !e.isCompleted) : e;
        }).toList();
    emit(UpdateTask(newList));
  }
}
