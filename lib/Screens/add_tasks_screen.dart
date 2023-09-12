import 'package:flutter/material.dart';
import '../models/task.dart';
import '../models/tasks_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  // final Function addTaskCallBack;
  //
  // AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newtaskTitle = 'a';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    newtaskTitle = newText;
                  }),
              const SizedBox(
                height: 20.0,
              ),
              FilledButton(
                onPressed: () {
                  // addTaskCallBack(newtaskTitle);
                  Provider.of<TaskData>(context, listen: false)
                      .addTasks(newtaskTitle!);
                  Navigator.pop(context);
                },
                style: FilledButton.styleFrom(
                  fixedSize: const Size(300.0, 50.0),
                  foregroundColor: Colors.lightBlue,
                  side: const BorderSide(style: BorderStyle.solid),
                ),
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
