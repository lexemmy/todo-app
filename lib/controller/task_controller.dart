import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_todo/model/task.dart';

class TaskController extends GetxController{
  var task = List<Task>().obs;

@override
  void onInit() {
    List storedTasks = GetStorage().read<List>('tasks');
    if (storedTasks != null) {
     task = storedTasks.map((e) => Task.fromJson(e)).toList().obs;
    }
    ever(task, (_){
      GetStorage().write('tasks', task.toList());
    });
    super.onInit();
  }
}