import 'package:flutter/material.dart';
import '../models/tasks_data.dart';
import 'tasks_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, value, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            //Provider.of<TaskData>(context) --- value
            return TaskTile(
              isChecked: value.tasks![index].isDone,
              taskTitle: value.tasks![index].name!,
              checkBoxCallBack: (checkboxSate) {
                value.updateTask(value.tasks![index]);
              },
              longPressCallBack: () {
                value.deleteTask(value.tasks![index]);
              },
            );
          },
          itemCount: value.taskCount,
        );
      },
    );
  }
}

// ListView(
// children: [
// TaskTile(
// isChecked: tasks[0].isDone,
// taskTitle: tasks[0].name,
// ),
// TaskTile(
// isChecked: tasks[1].isDone,
// taskTitle: tasks[1].name,
// ),
// TaskTile(
// isChecked: tasks[2].isDone,
// taskTitle: tasks[2].name,
// ),
// ],
// );
