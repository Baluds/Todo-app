import 'package:Todo/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Todo/models/task_data.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskitem = taskData.tasks[index];
            return TaskTile(
              tasktitle: taskitem.name,
              ischecked: taskitem.isDone,
              checkboxCallback: (checkBoxState) {
                taskData.updatetask(taskitem);
              },
              longpress: () {
                taskData.deletetask(taskitem);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
