import 'package:flutter/material.dart';
import 'package:wallet_ui/components/my_button.dart';
import 'package:wallet_ui/utils/app_colors.dart';

import 'screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentPurple,
      body: SafeArea(
        child: SizedBox.expand(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.monetization_on,
                      size: 70,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Sign in to Synca",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white)),
                    _buildForm(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildText("Email Address"),
              _buildTextInput(Icons.email, "Enter your email address", false),
              SizedBox(
                height: 10,
              ),
              _buildText("Password"),
              _buildTextInput(
                Icons.password_rounded,
                "Enter your Password",
                true,
                Icons.visibility,
              ),
              Row(
                children: [
                  Checkbox(
                      fillColor: WidgetStatePropertyAll(AppColors.white),
                      checkColor: AppColors.accentPurple,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      shape: CircleBorder(),
                      value: true,
                      onChanged: (value) {}),
                  Text(
                    "Remember for 30 days",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                buttonText: "Sign In",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
              ),
              MyButton(
                buttonText: "Create New Account",
                textColor: AppColors.black,
                buttonColor: AppColors.white,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.white),
      ),
    );
  }

  Widget _buildTextInput(IconData prefix, String label, bool obscureText,
      [IconData? suffix]) {
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: AppColors.black),
      decoration: InputDecoration(
        fillColor: AppColors.white.withValues(alpha: .9),
        filled: true,
        contentPadding: EdgeInsets.all(15),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(
          prefix,
          color: AppColors.black,
        ),
        suffixIcon: Icon(
          suffix,
          color: AppColors.black,
        ),
        labelText: label,
        labelStyle: TextStyle(
            color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
