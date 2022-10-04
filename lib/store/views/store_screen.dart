import 'package:firstproject/store/data.dart';
import 'package:firstproject/store/models/store.dart';
import 'package:firstproject/store/views/store_widget.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  late List<Store> ListStores;

  StoreScreen({super.key}) {
    ListStores = data.map((e) {
      return Store(e);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stores'),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: ListStores.length,
          itemBuilder: (c, index) {
            return DisplayStore(store: ListStores[index]);
          }),
    );
  }
}
