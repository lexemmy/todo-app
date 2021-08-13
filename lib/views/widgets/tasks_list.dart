import 'package:flutter/material.dart';
import 'package:my_todo/views/widgets/tasks_tile.dart';
import 'package:my_todo/controller/task_controller.dart';
import 'package:get/get.dart';

class TaskList extends StatelessWidget {

  TaskController controller = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> ListView.builder(itemBuilder: (context,index)=> Dismissible(
      key: UniqueKey(),
      onDismissed: (_){
        var removed = controller.task[index];
        controller.task.removeAt(index);
        Get.snackbar('Task removed', '${removed.name} deleted successfully');
      },
      background: Container(color: Colors.red,),
      child: ListTile(
        title: Text(controller.task[index].name,
            style: controller.task[index].isDone ? TextStyle(decoration: TextDecoration.lineThrough):  TextStyle(),),
        trailing: Checkbox(
          value: controller.task[index].isDone,
          onChanged: (v){
             controller.task[index].isDone = v;
             controller.task[index] = controller.task[index];
          },
        ),
      ),
    ),
    itemCount: controller.task.length,));
  }
}