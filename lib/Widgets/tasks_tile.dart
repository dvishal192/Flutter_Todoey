import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  String taskTitle = 'a';
  void Function(bool?) checkBoxCallBack;
  void Function() longPressCallBack;
  //State object extension -- changes its state. --State object extension is the the Stateful widget

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      leading: const Icon(
        Icons.add_box_rounded,
        size: 24.0,
      ),
      title: Text(
        "$taskTitle",
        style: TextStyle(
            fontSize: 24.0,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function(bool?) togglecheckBoxState;
//
//   const TaskCheckBox(
//       {super.key,
//       required this.checkboxState,
//       required this.togglecheckBoxState});
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.grey,
//       value: checkboxState,
//       onChanged: togglecheckBoxState,
//     );
//   }
// }

// TaskCheckBox(
// checkboxState: isChecked,
// togglecheckBoxState: (bool? checkboxState) {
// setState(() {
// if (checkboxState != null) {
// isChecked = checkboxState;
// } else {
// isChecked = true;
// }
// });
// },
// )
