import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/controller/Controllers.dart';
import 'package:project/screens/places_page.dart';

import '../components/custom_text_field2.dart';
import '../components/nav_bar_widget.dart';
import '../components/container_signin_login.dart';
import 'cart_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CollectionReference activityRef =
      FirebaseFirestore.instance.collection('Activities');
  CollectionReference locationsRef =
      FirebaseFirestore.instance.collection('Locations');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarWidget(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Welcome, ${Controllers.nameController.text}'),
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
        children: [
          Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Text(
                    '    find your next trip',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    '   Diving and Hiking',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
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
                hintSize: 15,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    '     popular Activities',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                height: 200,
                child: StreamBuilder(
                  stream: activityRef.snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error');
                    }
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return CustomContainer(
                                height: 130,
                                width: 250,
                                firstText:
                                    '${snapshot.data!.docs[index]['Location']}',
                                secoundText:
                                    'Duration ${snapshot.data!.docs[index]['Duration']}',
                                url: '${snapshot.data!.docs[index]['image']}');
                          });
                    }
                    return const Text("Loading");
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    '    popular places',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 190,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PlacesPage.id);
                    },
                    child: const Text(
                      'see all',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 170,
                child: StreamBuilder(
                  stream: locationsRef.snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error');
                    }
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            return CustomContainer(
                                height: 130,
                                width: 250,
                                firstText:
                                    '${snapshot.data!.docs[index]['LocationName']}',
                                url: '${snapshot.data!.docs[index]['image']}');
                          });
                    }
                    return const Text("Loading");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
