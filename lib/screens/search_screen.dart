import 'package:flutter/material.dart';
import 'package:project/constants/keys.dart';

import '../components/app_bar_widget.dart';
import '../components/custom_text_field2.dart';
import '../components/search_activites_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static String id = 'SearchScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: kPreferredSize, child: AppBarWidget()),
      body: ListView(
        children: [
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
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
          const ActivityWidget(),
        ],
      ),
    );
  }
}