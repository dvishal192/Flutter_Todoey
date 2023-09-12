import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Screens/tasks_screen.dart';
import './models/tasks_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //ChangeNotifier Provider placed on top of tree which signals every child in the tree of any changes.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
