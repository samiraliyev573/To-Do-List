import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallback(bool currentCheckBoxState) {
    setState(() {
      isChecked = currentCheckBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task.",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked, toggleCheckBoxState: checkBoxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState, onChanged: toggleCheckBoxState);
  }
}
