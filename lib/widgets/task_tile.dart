import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task 1',
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: ischecked,
        toggleCheckBoxState: (bool checkBoxState) {
          setState(() {
            ischecked = checkBoxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBoxState;
  TaskCheckbox({this.checkboxState, this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
