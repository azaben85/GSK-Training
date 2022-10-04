import 'package:firstproject/store/data.dart';
import 'package:firstproject/store/store.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Store> ListStores = data.map((e) {
      return Store(e);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stores'),
      ),
      backgroundColor: Colors.black,
      body: ListView(children: ListStores.map((e) => displayStore(e)).toList()),
    );
  }

  Padding displayStore(Store store) {
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

/*
 {
    "source": {"id": "theverge", "name": "The Verge"},
    "author": "Andrew J. Hawkins",
    "title":
        "Tesla now has 160,000 customers running its Full Self Driving beta",
    "description":
        "Tesla revealed on its AI day event on Friday that FSD beta is currently running on 160,000 cars. The company explained how training models are improving FSD and shared an update on the first Dojo supercomputer slated for Q1 2023.",
    "url":
        "https://www.theverge.com/2022/10/1/23380764/teslaaidayfullselfdrivingfsdupdatesdojosupercomputer",
    "urlToImage":
        "https://cdn.voxcdn.com/thumbor/ZNYdzGsXf27bzeavaTylM4UyUM0=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.voxcdn.com/uploads/chorus_asset/file/23986647/acastro_STK086_02.jpg",
    "publishedAt": "20221001T04:23:41Z",
    "content":
        "Illustration by Alex Castro / The Verge\r\n\n \n\n Tesla's Optimus robot prototype was not the only thing the company shared on Friday evening. Autopilot director Ashok Elluswamy took the stage during Tes… [+4837 chars]"
  }

*/
