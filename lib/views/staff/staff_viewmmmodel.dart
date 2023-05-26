// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:interview_exercise/core/model/staff_model.dart';
import 'package:stacked/stacked.dart';

class StaffVieModel extends BaseViewModel {
  List<Staff> staffList = [];

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  List<TextEditingController> skillControllers = [
    TextEditingController(),
    TextEditingController()
  ];

  bool isEmailUnique(String email) {
    return staffList.every((staff) => staff.email != email);
  }

  void addSkills() {
    skillControllers.add(TextEditingController());
    notifyListeners();
  }

  void removeSkill() {
    skillControllers.removeAt(TextEditingController() as int);
  }

  void addStaff() {
    if (formKey.currentState!.validate()) {
      String fullName = fullNameController.text.trim();
      String email = emailController.text.trim();
      String address = addressController.text.trim();
      List<String> skills =
          skillControllers.map((controller) => controller.text.trim()).toList();

      staffList.add(Staff(fullName, email, skills, address));

      fullNameController.clear();
      emailController.clear();
      skillControllers.forEach((controller) => controller.clear());
    }
    notifyListeners();
  }

  void removeStaff(int index) {
    staffList.removeAt(index);
    notifyListeners();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    skillControllers.forEach((controller) => controller.dispose());
    super.dispose();
    notifyListeners();
  }
}
