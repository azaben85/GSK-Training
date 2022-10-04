import 'package:firstproject/store/models/store.dart';
import 'package:flutter/material.dart';

class DisplayStoreGV extends StatelessWidget {
  final Store store;
  const DisplayStoreGV({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: [
        const Padding(padding: EdgeInsets.only(top: 15)),
        Text(
          store.title ?? '',
          //  maxLines: 1,
        ),
        Container(
            height: 200,
            width: 100,
            color: Colors.green,
            child: Image.network(
              store.image ?? '',
              fit: BoxFit.fill,
              errorBuilder: (x, y, z) {
                return const Center(child: Icon(Icons.image));
              },
            )),
      ]),
    );
  }
}
