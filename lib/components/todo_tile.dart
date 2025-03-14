import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  Function(bool?)? onChanged;
  final String taskName;
  final bool isCompleted;

  TodoTile(
      {super.key,
      required this.taskName,
      required this.isCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Checkbox(value: isCompleted, onChanged: onChanged),
              Text(
                taskName,
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
