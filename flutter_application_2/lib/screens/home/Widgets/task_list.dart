import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/color.dart';
import 'package:flutter_application_2/models/task_models.dart';


class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return TaskItem(task: task);
        },
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            constraints: const BoxConstraints(
              minHeight: 80,
            ),
            decoration: BoxDecoration(
              color: task.color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Icon(Icons.calendar_month_rounded,
                        color: Colors.white54, size: 16.0),
                    const SizedBox(width: 8.0),
                    Text(
                      task.date,
                      style: const TextStyle(
                          color: Colors.white54, fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: Icon(
              task.isCompleted
                  ? Icons.check_circle
                  : Icons.radio_button_unchecked,
              color: task.isCompleted
                  ? ListColor.hexBA83DE
                  : ListColor.hexBA83DE.withOpacity(0.41),
            ),
          )
        ],
      ),
    );
  }
}
