import 'package:autowrench/components/myButton.dart';
import 'package:autowrench/components/signTextField.dart';
import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../pages/signUpPage.dart';
import '../pages/homePage.dart';
class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  // TODO: log user in method
  void logUserIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  // TODO: sign user up method
  void signUserUp(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpPage(),
        ),
      );
    }

  // TODO: forgot password method
  void forgotPasswordMethod() {
    print("forgot is pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text("Auto Wrench",
        style: TextStyle(color: appBarTextColor),),
        centerTitle: true,
        //TODO: do not forget to set the icon size here since it might be too big for the app bar
        //TODO: current logo is somewhat broken
        leading: Image.asset(
          "assets/logo.png",
          errorBuilder: (context, error, stackTrace) {
            return const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Logo Failed To Load",
                style: TextStyle(fontSize: 10,
                ),
              ),
            );
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
                SizedBox(height: 40,),
                Text(
                  "Enter Your Phone Number",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),

                SignTextField(
                  hintText: "000 0000 000",
                  controller: phoneNumberController,
                  obsecureText: false,
                ),

                const SizedBox(height: 25),

                Text(
                  "Enter Your Password",
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),

                SignTextField(
                  hintText: "**********",
                  controller: passwordController,
                  obsecureText: true,
                ),

                const SizedBox(height: 25),

                MyButton(
                  onTap: () => logUserIn(context),
                  text: "Log In",
                ),

                const SizedBox(height: 25),

                MyButton(
                  onTap: () => signUserUp(context),
                  text: "Create New Account",
                ),

                const SizedBox(height: 25),

                MyButton(
                  onTap: forgotPasswordMethod,
                  text: "Forgot Password?",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
