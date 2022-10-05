import 'package:firstproject/image_session.dart';
import 'package:firstproject/myprofile.dart';
import 'package:firstproject/news/screen/List_news.dart';
import 'package:firstproject/statefullwidget_lecture/statefull_screen.dart';
import 'package:firstproject/store/views/store_screen.dart';
import 'package:firstproject/store/views/store_screen_gridview.dart';
import 'package:flutter/material.dart';

// Flutter : session 2
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: ListView(
        children: [
          // 1- Images and container Decoration
          navidateTo(context, '1-  Images and container Decoration',
              const ImageSession()),
          // 2- Assigment
          navidateTo(context, '2- MyProfile', const MyProfile()),
          // 3- Assigment
          navidateTo(context, '3- News', const ListNews()),

          // 4- Homework Assigment
          navidateTo(context, '4- Stores', StoreScreen()),

          // 5- Homework Assigment
          navidateTo(
              context, '5- Stores StoreScreenGridView', StoreScreenGridView()),

          // 6- Statefull lecture
          navidateTo(context, '6- Stateful lecture', NewStatefulWidget()),
        ],
      ),
    );
  }

  InkWell navidateTo(BuildContext context, [String label = '', Widget? navTo]) {
    return InkWell(
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 137, 251, 6),
                    Color.fromARGB(255, 221, 168, 168),
                    Color.fromARGB(255, 58, 187, 116),
                  ]),
              borderRadius: BorderRadius.circular(10)),
          //  width: 200,
          height: 100,
          child: Center(
              child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => navTo!))
            });
  }
}
