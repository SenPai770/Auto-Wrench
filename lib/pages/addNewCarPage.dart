import 'package:autowrench/components/signTextField.dart';
import 'package:autowrench/constants/color.dart';
import 'package:flutter/material.dart';
import '../components/myButton.dart';

class AddNewCarPage extends StatelessWidget {
  AddNewCarPage({super.key});

  // Controllers
  final serialNumberController = TextEditingController();
  final userNameController = TextEditingController();
  final tagNameController = TextEditingController();
  final distanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text(
          "Add New Car",
          style: TextStyle(color: appBarTextColor),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 3,
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
                  "Enter Car Serial Number",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "00000000",
                  controller: serialNumberController,
                  obsecureText: false,
                ),
                const SizedBox(height: 25),

                const Text(
                  "Enter Owner Name",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "Ahmed's car",
                  controller: userNameController,
                  obsecureText: false,
                ),
                const SizedBox(height: 25),

                const Text(
                  "Enter Tag Name",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "My Camry 22",
                  controller: tagNameController,
                  obsecureText: false,
                ),
                const SizedBox(height: 25),

                const Text(
                  "Distance Travlled in KM",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "5021KM",
                  controller: distanceController,
                  obsecureText: false,
                ),
                const SizedBox(height: 40),

                // TODO: Save car data
                MyButton(
                  onTap: () {},
                  text: "Save",
                ),

                // TODO: Open camera to capture mileage
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                  iconSize: 40,
                  padding: EdgeInsets.all(10),
                  color: buttonBackgroundColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
