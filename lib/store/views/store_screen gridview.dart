import 'package:firstproject/store/data.dart';
import 'package:firstproject/store/models/store.dart';
import 'package:firstproject/store/views/store_gv_widget.dart';
import 'package:firstproject/store/views/store_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StoreScreenGridView extends StatelessWidget {
  late List<Store> ListStores;

  StoreScreenGridView({super.key}) {
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
      backgroundColor: Colors.grey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ListStores.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return DisplayImageStore(store: ListStores[index]);
              },
            ),
          ),
          const Text(
            'Products: ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemCount: ListStores.length,
              itemBuilder: (c, index) {
                return DisplayStoreGV(store: ListStores[index]);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 300),
            ),
          ),
        ],
      ),
    );
  }
}
