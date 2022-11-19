import 'package:flutter/material.dart';
import 'package:myapp/src/modules/home/components/HomeFragment.dart';
import 'package:myapp/src/modules/home/components/SettingFragment.dart';
import 'package:myapp/src/modules/home/components/TaskFragment.dart';
import 'package:myapp/src/utils/logger.dart';

import '../../../styles/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum HomeTab {
  HOME,
  TASKS,
  SETTING,
}

class _HomePageState extends State<HomePage> {
  HomeTab _selectIndex = HomeTab.HOME;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          getBody(_selectIndex),
          getTitle(_selectIndex),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
        currentIndex: _selectIndex.index,
        onTap: (index) => {
          setState(() {
            _selectIndex = HomeTab.values[index];
          })
        },
      ),
    );
  }

  Widget getBody(HomeTab tab) {
    switch (tab) {
      case HomeTab.HOME:
        return HomeFragment();
      case HomeTab.SETTING:
        return SettingFragment();
      case HomeTab.TASKS:
        return TaskFragment();
      default:
        return HomeFragment();
    }
  }

  Widget getTitle(HomeTab selectIndex) {
    getTextTitle(HomeTab tab) {
      switch (tab) {
        case HomeTab.TASKS:
          return 'Tasks';
        case HomeTab.HOME:
          return 'Home';
        case HomeTab.SETTING:
          return 'Setting';
      }
    }

    var text = getTextTitle(_selectIndex);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
            alignment: Alignment.topCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyles.h1,
                ),
                Visibility(
                  visible: _selectIndex == HomeTab.HOME,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu)),
                )
              ],
            )),
      ),
    );
  }
}
