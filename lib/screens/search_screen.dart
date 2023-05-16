import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/components/search_activites_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static String id = 'SearchScreen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  CollectionReference activityRef =
      FirebaseFirestore.instance.collection('Activities');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: activityRef.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Error");
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return ActivityWidget(
                  url: '${snapshot.data!.docs[index]['image']}',
                  activityName: '${snapshot.data!.docs[index]['ActivityName']}',
                  activityLocation: '${snapshot.data!.docs[index]['Location']}',
                  duration: '${snapshot.data!.docs[index]['Duration']}',
                  price: '${snapshot.data!.docs[index]['Price']}',
                );
              },
            );
          }
          return const Text('Loading');
        },
      ),
    );
  }
}
