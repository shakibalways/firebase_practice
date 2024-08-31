import 'package:firebase_project/components/my_custom_textField.dart';
import 'package:firebase_project/controller/getx/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {

    final FirebaseController controller = Get.put(FirebaseController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCustomTextfield(
                lText: "name",
                controller: controller.nController,
              ),
              const SizedBox(
                height: 20,
              ),
              MyCustomTextfield(
                  lText: "id", controller: controller.iController),
              const SizedBox(
                height: 20,
              ),
              MyCustomTextfield(
                  lText: "phone", controller: controller.pController),
              const SizedBox(
                height: 30,
              ),
              MyCustomTextfield(
                  lText: "roll", controller: controller.rController),
              const SizedBox(
                height: 30,
              ),
              MyCustomTextfield(
                  lText: "collage", controller: controller.collController),
              const SizedBox(
                height: 30,
              ),
              MyCustomTextfield(
                  lText: "dep", controller: controller.depController),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  controller.addUserFun();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Data Get",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
