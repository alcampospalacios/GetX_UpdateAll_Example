import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_update_example/main_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'GetXExampleUpdate',
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              body: GetBuilder<MainController>(
            id: 'idCount',
            init: MainController(),
            builder: (ctrl) => Column(
              children: [
                TextButton.icon(
                    onPressed: () => ctrl.updateCount(),
                    icon: const Icon(Icons.add),
                    label: const Text('Increment')),
                Flexible(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Text(' $index - count is: ${ctrl.count}');
                    },
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
