import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/components/place_widget.dart';

class PlacesPage extends StatefulWidget {
  const PlacesPage({super.key});
  static String id = "PlacesPage";

  @override
  State<PlacesPage> createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  CollectionReference locationsRef =
      FirebaseFirestore.instance.collection('Locations');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
            child: Text(
              'Expolore all the places',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder(
              stream: locationsRef.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Text('Error');
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return PlaceWidget(
                          url: snapshot.data!.docs[index]['image'],
                          placeName: snapshot.data!.docs[index]['LocationName'],
                        );
                      });
                }
                return const Text("Loading");
              },
            ),
          ),
        ],
      ),
    );
  }
}
