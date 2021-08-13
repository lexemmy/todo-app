import 'package:flutter/material.dart';
import 'package:my_todo/views/screens/add_task_modal.dart';
import 'package:my_todo/views/widgets/tasks_list.dart';

class TaskScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF810180),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
          isScrollControlled: true,
          builder: (context) => AddTaskModal(),);
        },
        backgroundColor: Color(0xFF810180),
        child: Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30.0, bottom: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Color(0xFF810180),
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'My ToDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold),
                ),
                // Text(
                //   '12 Tasks',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 18.0),
                // ),
              ],
            ),
          ),
          Expanded(child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                )
              ),
              child: TaskList(),
            ))
        ],
      ),
    );
  }
}
