import 'package:firebase_project/components/my_custom_textField.dart';
import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  final TextEditingController nController = TextEditingController();
  final TextEditingController iController = TextEditingController();
  final TextEditingController pController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                controller: nController,
              ),
              const SizedBox(
                height: 20,
              ),
              MyCustomTextfield(lText: "id", controller: iController),
              const SizedBox(
                height: 20,
              ),
              MyCustomTextfield(lText: "phone", controller: pController),
              const SizedBox(
                height: 30,
              ),
              MyCustomTextfield(lText: "roll", controller: pController),
              const SizedBox(
                height: 30,
              ),
              MyCustomTextfield(lText: "collage", controller: pController),
              const SizedBox(
                height: 30,
              ),
              MyCustomTextfield(lText: "dep", controller: pController),
              const SizedBox(
                height: 30,
              ),
              Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
