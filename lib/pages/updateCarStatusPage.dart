import 'package:autowrench/components/myButton.dart';
import 'package:autowrench/components/signTextField.dart';
import 'package:flutter/material.dart';
import '../constants/color.dart';

class UpdateCarStatusPage extends StatelessWidget {
  UpdateCarStatusPage({super.key});

  final mileageController = TextEditingController();

  // TODO: save updated mileage
  void saveMileage() {
    print("Mileage Saved");
  }

  // TODO: open camera or gallery
  void openCameraOrGallery() {
    print("Camera or Gallery Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text(
          "Auto Wrench",
          style: TextStyle(color: appBarTextColor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: pageBackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                const Text(
                  "Update Mileage",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 5),

                SignTextField(
                  hintText: "Enter Current Mileage",
                  controller: mileageController,
                  obsecureText: false,
                ),

                const SizedBox(height: 25),

                MyButton(
                  onTap: saveMileage,
                  text: "Save",
                ),

                const SizedBox(height: 25),

                MyButton(
                  onTap: openCameraOrGallery,
                  text: "Enter Current Mileage Using Camera or Gallery",
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
