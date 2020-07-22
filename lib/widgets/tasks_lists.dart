import 'package:Todo/models/task.dart';
import 'package:Todo/widgets/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasktitle: widget.tasks[index].name,
          ischecked: widget.tasks[index].isDone,
          checkboxCallback: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
