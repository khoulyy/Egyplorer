import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../components/container_signin_login.dart';

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
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    '     popular Activities',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 210,
                child: StreamBuilder(
                  stream: activityRef.snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error');
                    }
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CustomContainer(
                                height: 200,
                                width: 300,
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
              const Row(
                children: [
                  Text(
                    '    popular places',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: StreamBuilder(
                  stream: locationsRef.snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Error');
                    }
                    if (snapshot.hasData) {
                      return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return CustomContainer(
                                height: 200,
                                width: 300,
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
