// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    super.key,
    required this.task,
    required this.isCompleted,
    required this.onChanged,
    required this.DeleteTask
  });

  final String task;
  final bool isCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext?)? DeleteTask;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [SlidableAction(
            onPressed: DeleteTask,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 162, 210, 242),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              //checklist
              Checkbox(onChanged: onChanged, value: isCompleted),
              // task
              Text(
                task,
                style: TextStyle(
                    fontSize: 16,
                    decoration: isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
