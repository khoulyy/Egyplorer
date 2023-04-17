import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/Screens/CartScreen.dart';
import 'package:project/Screens/SearchScreen.dart';
import 'package:project/Widgets/CustomTextField.dart';
import 'package:project/Widgets/NavBarWidget.dart';
import 'package:project/Widgets/containerSignInAndLogIn.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarWidget(),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text('Welcome, Ahmed'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartPage.id);
              },
              icon: const Icon(FontAwesomeIcons.cartShopping),
            ),
          ],
        ),
        body: ListView(
          children:[ Column(children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: const [
                Text(
                  '    find your next trip',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  '   Diving and Hiking',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                prefixIcon: const Icon(Icons.search),
                hintColor: Colors.grey,
                hintText: 'search "Snorkling or cairo"',
                height: 50,
                width: 281,
                borderRadius: 25,
                hintSize: 15),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  '     popular Activities',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 160,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SearchScreen.id);
                  },
                  child: const Text(
                    'see all',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 170,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                  children: [
                    CustomContainer(
                        height: 138,
                        width: 230,
                        firstText: 'Snorkling',
                        secoundText: 'from 100',
                        url:
                            'https://images.unsplash.com/photo-1484507175567-a114f764f78b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                    CustomContainer(
                        height: 138,
                        width: 230,
                        firstText: 'Snorkling',
                        secoundText: 'from 100',
                        url:
                            'https://images.unsplash.com/photo-1484507175567-a114f764f78b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                    CustomContainer(
                        height: 138,
                        width: 230,
                        firstText: 'Snorkling',
                        secoundText: 'from 100',
                        url:
                            'https://images.unsplash.com/photo-1484507175567-a114f764f78b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                    CustomContainer(
                        height: 138,
                        width: 230,
                        firstText: 'Snorkling',
                        secoundText: 'from 100',
                        url:
                            'https://images.unsplash.com/photo-1484507175567-a114f764f78b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text(
                  '    popular places',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 190,
                ),
                GestureDetector(
                    child: const Text(
                  'see all',
                  style: TextStyle(color: Colors.blueAccent),
                )),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
            SizedBox(
              height:170 ,
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(children: [
                  CustomContainer(
                      height: 138,
                      width: 230,
                      firstText: 'Upper Egypt',
                      secoundText: ' 4 activities',
                      url:
                          'https://images.unsplash.com/photo-1557640047-75c97a5f1ea4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1795&q=80'),
                  CustomContainer(
                      height: 138,
                      width: 230,
                      firstText: 'Upper Egypt',
                      secoundText: ' 4 activities',
                      url:
                          'https://images.unsplash.com/photo-1557640047-75c97a5f1ea4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1795&q=80'),
                  CustomContainer(
                      height: 138,
                      width: 230,
                      firstText: 'Upper Egypt',
                      secoundText: ' 4 activities',
                      url:
                          'https://images.unsplash.com/photo-1557640047-75c97a5f1ea4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1795&q=80'),
                ])
              ],
            ))
          ]),
          
        ]));
  }
}
