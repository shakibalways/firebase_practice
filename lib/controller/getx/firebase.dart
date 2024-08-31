

import 'dart:developer';

import 'package:firebase_project/controller/firebase/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController {
  final TextEditingController nController = TextEditingController();
  final TextEditingController iController = TextEditingController();
  final TextEditingController pController = TextEditingController();
  final TextEditingController rController = TextEditingController();
  final TextEditingController collController = TextEditingController();
  final TextEditingController depController = TextEditingController();

  addUserFun() async {
    log("=============start============");
    await FirebaseService.addUserService(
      name: nController.text,
      id: iController.text,
      phone: pController.text,
      roll: rController.text,
      collage: collController.text,
      dep: depController.text,
    );
    log("==========Done===============");
  }
}
