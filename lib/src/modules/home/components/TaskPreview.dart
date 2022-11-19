import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/TaskController.dart';

class TaskPreview extends StatelessWidget {
  TaskPreview({Key? key}) : super(key: key);
  TaskController controller = Get.put(TaskController(), permanent: true, tag: "a");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(() => Text(controller.a.value.toString())),
          TextButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('INcrease')),
          Test()
        ],
      ),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);
  TaskController controller = Get.put(TaskController(), permanent: true, tag: "b");
  // TaskController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(()=>Text(controller.a.value.toString())),
    );
  }
}
