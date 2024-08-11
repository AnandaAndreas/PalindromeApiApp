import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kampusmerdeka/controllers/profileController.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 0.1,
          ),
        ),
        title: const Text(
          'Third Page',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.profiles.isEmpty) {
            return const Center(child: Text('No profiles found.'));
          } else {
            return ListView.builder(
              itemCount: controller.profiles.length,
              itemBuilder: (context, index) {
                final profile = controller.profiles[index];
                return Container(
                  margin: EdgeInsets.zero, 
                  padding: EdgeInsets.zero, 
                  child: Card(
                    margin: EdgeInsets.zero,
                    color: Colors.transparent, 
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 0.1,
                            ),
                          ),),
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.all(8), 
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(profile.avatar),
                        ),
                        title: Text('${profile.firstName} ${profile.lastName}'),
                        subtitle: Text(profile.email),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
