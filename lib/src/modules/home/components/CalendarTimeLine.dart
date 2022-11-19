
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class CalendarTimeLine extends StatelessWidget {
  const CalendarTimeLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: CalendarTimeline(
        initialDate: DateTime(2020, 4, 20),
        firstDate: DateTime(2019, 1, 15),
        lastDate: DateTime(2020, 11, 20),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: Colors.blueGrey,
        dayColor: Theme.of(context).primaryColor,
        activeDayColor: Colors.white,
        activeBackgroundDayColor: Colors.redAccent[100],
        dotsColor: Color(0xFF333A47),
        selectableDayPredicate: (date) => date.day != 23,
        locale: 'en_ISO',
      ),
    );
  }
}