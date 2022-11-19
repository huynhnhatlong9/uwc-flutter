import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/src/modules/home/components/TaskPreview.dart';

import 'CalendarTimeLine.dart';

class TaskFragment extends StatelessWidget {
  const TaskFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CalendarTimeLine(),
          TaskPreview()
        ],
      ),
    );
  }
}

