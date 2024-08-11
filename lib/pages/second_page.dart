import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampusmerdeka/controllers/nameController.dart';
import 'package:kampusmerdeka/widgets/appbar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Namecontroller controllerName = Get.put(Namecontroller());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(title: 'Second Page'),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Obx(
                  () => Text(
                    "${controllerName.name.value}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              'Selected User Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                height: 51,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text(
                    'Press Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: const Color.fromRGBO(43, 99, 122, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
