import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project/controller/controllers.dart';
import 'package:project/view/screens/interest_page.dart';
import 'package:project/view/screens/login_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../components/button_widget.dart';
import '../../components/custom_text_field2.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String id = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  String? email = '';
  String? password = '';
  String? confirmPassword = '';
  bool isLoading = false;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      opacity: 0.5,
      inAsyncCall: isLoading,
      child: Scaffold(
          body: Center(
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(kSignUpPhoto), fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Container(
              width: 428,
              height: 600,
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
                      CustomTextField(
                        controller: Controllers.emailController,
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
                      CustomTextField(
                        obscure: true,
                        controller: Controllers.passwordController,
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
                      CustomTextField(
                        obscure: true,
                        controller: Controllers.confirmPasswordController,
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
                            isLoading = true;
                            setState(() {});
                            try {
                              await registerUser();

                              // ignore: use_build_context_synchronously
                              Navigator.pushNamed(context, InterestPage.id);
                            } on FirebaseAuthException catch (ex) {
                              if (ex.code == 'weak-password') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('weak password')));
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
                            isLoading = false;
                            setState(() {});
                          } else {}
                        },
                        height: 60,
                        width: 158,
                        text: 'Sign up',
                        fontSize: 20,
                        fontColor: kWhiteColor,
                        backgroundColor: kGreenColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await signInWithGoogle();
                                  // ignore: use_build_context_synchronously
                                  Navigator.pushNamed(context, InterestPage.id);
                                  // ignore: use_build_context_synchronously
                                },
                                child: Card(
                                  shadowColor: Colors.black,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/Google.png',
                                        height: 40,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text('Sign up using Google     '),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
          ),
        ]),
      )),
    );
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
