import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/components/button_widget.dart';
import 'package:project/constants/keys.dart';
import 'package:project/screens/login_screen.dart';
import 'package:project/screens/signup_step3_screen.dart';

import '../components/custom_text_field2.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  static String id = 'SignUpScreen';
  String? email = '';
  String? password = '';
  String? confirmPassword = '';
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kSignUpPhoto), fit: BoxFit.cover)),
        ),
        Container(
          width: 428,
          height: 514,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: Colors.grey.withOpacity(0.6),
              shape: BoxShape.rectangle),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        '           Email',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    onChanged: (data) {
                      email = data;
                    },
                    validator: (data) {
                      if (data!.isEmpty) {
                        return 'an email is required';
                      }
                      return null;
                    },
                    hintColor: Colors.black,
                    hintText: 'enter your email',
                    prefixIcon: const Icon(Icons.email),
                    height: 45,
                    width: 300,
                    borderRadius: 5,
                    hintSize: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        '           password',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    onChanged: (data) {
                      password = data;
                    },
                    validator: (data) {
                      if (data!.isEmpty) {
                        return 'password is required';
                      }
                      return null;
                    },
                    hintColor: Colors.black,
                    hintText: 'enter your password',
                    prefixIcon: const Icon(Icons.password),
                    height: 45,
                    width: 300,
                    borderRadius: 5,
                    hintSize: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        '           confirm password',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: confirmPasswordController,
                    onChanged: (data) {
                      confirmPassword = data;
                    },
                    validator: (data) {
                      if (data!.isEmpty) {
                        return 'password is required';
                      }

                      if (password != confirmPassword) {
                        return 'paswword does not match';
                      }
                      return null;
                    },
                    hintColor: Colors.black,
                    hintText: 'confirm your password',
                    prefixIcon: const Icon(Icons.password),
                    height: 45,
                    width: 300,
                    borderRadius: 5,
                    hintSize: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonWidget(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          await registerUser();

                          // ignore: use_build_context_synchronously
                          Navigator.pushNamed(context, SignUpStep3Screen.id);
                        } on FirebaseAuthException catch (ex) {
                          if (ex.code == 'weak-password') {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('weak password')));
                          } else if (ex.code == 'email-already-in-use') {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('email already in use')));
                          }
                        } catch (ex) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('there was an error ')));
                        }
                      } else {}
                    },
                    height: 60,
                    width: 158,
                    text: 'Sign up',
                    fontSize: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?  ',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, LogInScreen.id);
                          },
                          child: const Text(
                            'LogIn',
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }

  Future<void> registerUser() async {
    // ignore: unused_local_variable
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
