import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_test/data_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataController dataController = DataController.to;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  dataController.answerLabel.value,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                )),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: size.width,
                child: ElevatedButton(
                    onPressed: () {
                      dataController.answerLabel.value = dataController.largestOfThree();
                    }, child: const Text('Calculate')))
          ],
        ),
      ),
    );
  }
}
