import 'package:equatable/equatable.dart';
import 'package:todo/Model/task_model.dart';

sealed class TaskState extends Equatable {
  final List<TaskModel> taskList;

  const TaskState(this.taskList);
  @override
  List<Object?> get props => [taskList];
}

final class TaskInitial extends TaskState {
  TaskInitial() : super([]);
}

final class UpdateTask extends TaskState {
 const UpdateTask(super.taskList);
}
