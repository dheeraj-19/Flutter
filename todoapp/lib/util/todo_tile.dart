import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), 
        children: [SlidableAction(onPressed: deleteFunction, icon: Icons.delete,backgroundColor: Colors.white, borderRadius: BorderRadius.circular(10.0),)]),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.black,  
              ),
              Text(taskName, 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 25,
                  decoration: taskCompleted? TextDecoration.lineThrough : TextDecoration.none,
                ),  
              ),
            ],
          ),
        ),
      ),
    );
  }
}