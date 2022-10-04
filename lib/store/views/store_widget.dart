import 'package:firstproject/store/models/store.dart';
import 'package:flutter/material.dart';

class DisplayStore extends StatelessWidget {
  final Store store;
  const DisplayStore({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              store.title ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              color: Colors.green,
              width: 400,
              height: 300,
              child: Image.network(
                store.image ?? '',
                fit: BoxFit.cover,
                errorBuilder: (x, y, z) {
                  return const Center(child: Icon(Icons.image));
                },
              )),
          Text('Item Price: ${store.price ?? ''}'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 203, 218, 245))),
              child: Text(store.description ?? ''),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text(
                    'Rating Count: ${store.rating!.rate ?? '0'} - Rate: ${store.rating!.rate ?? '0'}')),
          ),
        ]),
      ),
    );
  }
}
