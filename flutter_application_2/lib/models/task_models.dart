import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/color.dart';


class Task {
  final int id;
  final String title;
  final String date;
  final bool isCompleted;
  final Color color;

  Task({
    required this.id,
    required this.title,
    required this.date,
    required this.isCompleted,
    required this.color,
  });

  // Factory constructor
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as int,
      title: map['title'] as String,
      date: map['date'] as String,
      isCompleted: map['completed'] as bool,
      color: map['color'] as Color,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'date': date,
      'completed': isCompleted,
      'color': color,
    };
  }
}

// Sample task data
final List<Map<String, dynamic>> taskData = [
  {
    "id": 1,
    "title": "Mobile App Research",
    "date": "4 Oct",
    "completed": true,
    "color": ListColor.peach,
  },
  {
    "id": 2,
    "title": "Prepare Wireframe for Main Flow",
    "date": "4 Oct",
    "completed": true,
    "color": ListColor.blue,
  },
  {
    "id": 3,
    "title": "Prepare Screens",
    "date": "4 Oct",
    "completed": false,
    "color": ListColor.purple,
  },
];

// Convert taskData to a list of Task objects
final List<Task> tasks = taskData.map((data) => Task.fromMap(data)).toList();
