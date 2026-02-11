import 'package:autowrench/components/myButton.dart';
import 'package:autowrench/components/signTextField.dart';
import 'package:autowrench/pages/loginPage.dart';
import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../pages/homePage.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final firstNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  // TODO: sign user up method
  void signUserUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
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
          icon: Icon(Icons.arrow_back,
              color: Colors.white),
          onPressed: (){
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

                // First Name
                const Text(
                  "Enter Your First Name",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "Ahmed",
                  controller: firstNameController,
                  obsecureText: false,
                ),
                const SizedBox(height: 25),

                // Phone Number
                const Text(
                  "Enter Your Phone Number",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "000 0000 000",
                  controller: phoneNumberController,
                  obsecureText: false,
                ),
                const SizedBox(height: 25),

                // Password
                const Text(
                  "Enter Your Password",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "**********",
                  controller: passwordController,
                  obsecureText: true,
                ),
                const SizedBox(height: 25),

                // Re-enter Password
                const Text(
                  "Re-enter Your Password",
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
                const SizedBox(height: 5),
                SignTextField(
                  hintText: "**********",
                  controller: rePasswordController,
                  obsecureText: true,
                ),
                const SizedBox(height: 25),

                // Buttons
                MyButton(
                  onTap: () => signUserUp(context),
                  text: "Sign Up",
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
