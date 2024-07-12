import 'package:class_assigment/view/Login&Signup/login_screen.dart';
import 'package:class_assigment/viewmodel/SignupScreen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupscreenController signupController =
      Get.put(SignupscreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
              const Padding(
                padding: EdgeInsets.only(left: 140),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 88, left: 85),
                child: Image.asset('assets/images/Ellipse.png'),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Create Account',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, top: 10),
            child: Text(
              'Please Inter your Informatioin and\n create your account',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80)),
                  hintText: 'Enter Your Name',
                  prefixIcon: const Icon(Icons.person_2_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  hintText: 'Enter Your Email',
                  prefixIcon: const Icon(Icons.email_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  hintText: 'Enter Your Pssword',
                  prefixIcon: const Icon(Icons.lock_open_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Image.asset('assets/icons/Sign Iup.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 160),
            child: Text(
              'SignUp with',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/Apple.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                Image.asset('assets/icons/Google.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Have an account ',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
                InkWell(
                  onTap: () {
                    Get.to(const LoginScreen());
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color(0xff756EF3), fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
