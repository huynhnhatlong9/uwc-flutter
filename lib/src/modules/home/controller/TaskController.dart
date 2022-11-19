import 'package:get/get.dart';

class ExamData {
  int counter = 1;
}

class TaskController extends GetxController implements GetxService {
  TaskController() {
    print('init');
  }
  var a = 0.obs;
  void increment() {
    a.value++;
  }
}
