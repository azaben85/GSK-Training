import 'package:firstproject/store/data.dart';
import 'package:firstproject/store/models/store.dart';
import 'package:firstproject/store/views/store_gv_widget.dart';
import 'package:flutter/material.dart';

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

class DisplayImageStore extends StatelessWidget {
  final Store store;
  const DisplayImageStore({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
            color: Colors.green,
            width: 100,
            height: 200,
            child: Image.network(
              store.image ?? '',
              fit: BoxFit.cover,
              errorBuilder: (x, y, z) {
                return const Center(child: Icon(Icons.image));
              },
            )),
      ),
    );
  }
}
