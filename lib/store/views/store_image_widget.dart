import 'package:firstproject/store/models/store.dart';
import 'package:flutter/material.dart';

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
