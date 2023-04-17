import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/Screens/LogInScreen.dart';
import 'package:project/Screens/SignUpStep3Screen.dart';
import 'package:project/Widgets/ButtonWidget.dart';
import 'package:project/Widgets/CustomTextField.dart';
import 'package:project/constants/keys.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});
  static String id = 'SignUpScreen';
  String? email,password;
    GlobalKey<FormState> formKey = GlobalKey();

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
                  Row(
                    children: const [
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
                      email=data;
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
                  
                  Row(
                    children: const [
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
                      onChanged:(data) {
                        password=data;
                      },
                    hintColor: Colors.black,
                    hintText: 'enter your password',
                    prefixIcon: const Icon(Icons.password),
                    height: 45,
                    width: 300,
                    borderRadius: 5,
                    hintSize: 15,
                  ),   
                  const SizedBox(height: 10,),             
                  
                  Row(
                    children: const [
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
                    onPressed: () async{
            if (formKey.currentState!.validate()) {
  try {
              await registerUser();
                                    Navigator.pushNamed(context, SignUpStep3Screen.id);

            } on FirebaseAuthException catch (ex) {
              if (ex.code == 'weak-password') {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('weak password')));
              } else if (ex.code == 'email-already-in-use') {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar
                
                (
                  backgroundColor: Colors.lightBlue, 
                   content: Text('email already in use')));
              }
            } catch (ex) {
              print(ex);
            }  ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(
                  
                  backgroundColor: Colors.lightBlue,
                  content: Text('success')));
                 
}else {
  
}
                      
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
     final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
