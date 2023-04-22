// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project/helper/show_snack_bar.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/signup_screen.dart';

import '../components/button_widget.dart';
import '../components/custom_text_field2.dart';
import '../constants/keys.dart';

// ignore: must_be_immutable
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  static String id = 'LogInScreen';

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  String? password;
  bool? isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      opacity: 0.5,
      inAsyncCall: isLoading!,
      child: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(kLogInPhoto),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 428,
                height: 514,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.grey.withOpacity(0.6),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              '           Email*',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
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
                              return 'Email is required';
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
                          height: 25,
                        ),
                        Row(
                          children: const [
                            Text(
                              '           password*',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          onChanged: (data) {
                            password = data;
                          },
                          validator: (data) {
                            if (data!.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                          hintColor: Colors.black,
                          hintText: 'enter your password',
                          prefixIcon: const Icon(
                            Icons.password,
                          ),
                          height: 45,
                          width: 300,
                          borderRadius: 5,
                          hintSize: 15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ButtonWidget(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {});
                              try {
                                await logIn();
                                // ignore: use_build_context_synchronously
                                showSnackBar(context, message: 'Success!');
                                // ignore: use_build_context_synchronously
                                Navigator.pushNamed(context, HomeScreen.id);
                              } on FirebaseAuthException catch (ex) {
                                if (ex.code == 'user-not-found') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('User not found')));
                                } else if (ex.code == 'wrong-password') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Wrong password')));
                                }
                              } catch (ex) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('There was an error')));
                              }
                              isLoading = false;
                              setState(() {});
                            }
                          },
                          height: 60,
                          width: 158,
                          text: ' LogIn',
                          fontSize: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't Have An Account?  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignUpScreen.id);
                              },
                              child: const Text(
                                'SignUp',
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> logIn() async {
    // ignore: unused_local_variable
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
