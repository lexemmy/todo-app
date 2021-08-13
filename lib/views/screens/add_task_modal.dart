import 'package:flutter/material.dart';
import 'package:my_todo/controller/task_controller.dart';
import 'package:get/get.dart';
import 'package:my_todo/model/task.dart';

class AddTaskModal extends StatelessWidget {

  TaskController controller = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return FractionallySizedBox(
      heightFactor: 0.5,
      child: Container(
        color: Color(0xff757575),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: Container(
              height:700,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Text('Add Task',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFF810180)
                  ),),
                  TextField(
                    controller: textEditingController,
                    autofocus: true,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(onPressed: (){
                    controller.task.add(
                      Task(name: textEditingController.text)
                    );
                    Get.back();
                  }, child: Text('Add'),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFF810180))),)
                ],
              ),
            ),),
      ),
    );
  }
}
