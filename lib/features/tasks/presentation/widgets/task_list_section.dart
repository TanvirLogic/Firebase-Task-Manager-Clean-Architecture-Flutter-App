import 'package:flutter/material.dart';
import 'package:flutter_firebase_task_manager/features/tasks/presentation/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../providers/task_provider.dart';

class TaskListSection extends StatelessWidget {
  const TaskListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, _) {
        if (taskProvider.tasks.isEmpty) {
          return const Center(child: Text("No tasks yet"));
        }

        return ListView.builder(
          itemCount: taskProvider.tasks.length,
          itemBuilder: (context, index) {
            final task = taskProvider.tasks[index];

            return TaskTile(task: task);
          },
        );
      },
    );
  }
}
