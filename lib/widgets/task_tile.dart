import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final Function checkboxCallback;
  TaskTile({this.ischecked, this.tasktitle, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
