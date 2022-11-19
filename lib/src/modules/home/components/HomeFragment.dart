import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../styles/text_styles.dart';

class HomeFragment extends StatelessWidget {
  HomeFragment({Key? key}) : super(key: key);
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Column(
        children: [
          SizedBox(
            height: size.height * 0.3,
            child: Stack(
              alignment: Alignment.topCenter,
              children: const [
                HeadDecor(),
                Positioned(
                  bottom: 0,
                  child: TaskCount(),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Phương tiện',
                        style:
                            TextStyles.h2.copyWith(fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  height: size.height * 0.2,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                  child: Image.asset('assets/images/car.jpeg'),
                )
              ],
            ),
          )
        ],
      ),
    ]);
  }
}

class TaskCount extends StatelessWidget {
  const TaskCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(offset: Offset(0, 0), blurRadius: 0.4)],
          borderRadius: BorderRadius.circular(35)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Task',
            style: TextStyles.h3
                .copyWith(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const Divider(
            color: Colors.grey,
          ),
          const Text('2')
        ],
      ),
    );
  }
}

class HeadDecor extends StatelessWidget {
  const HeadDecor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3 - 50,
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.elliptical(100, 50)),
          color: Theme.of(context).primaryColor),
    );
  }
}
