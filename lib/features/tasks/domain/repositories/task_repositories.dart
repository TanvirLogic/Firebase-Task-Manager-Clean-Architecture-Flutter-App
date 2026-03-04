import '../entities/task.dart';

abstract class TaskRepository {
  Stream<List<Task>> watchTasks(String uid);

  Future<void> addTask(String uid, Task task);

  Future<void> updateTask(String uid, Task task);

  Future<void> deleteTask(String uid, String taskId);
}
