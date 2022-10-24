import 'package:firstproject/TaskManagement/task_management_screen.dart';
import 'package:firstproject/image_session.dart';
import 'package:firstproject/localization/localization_screen.dart';
import 'package:firstproject/myprofile.dart';
import 'package:firstproject/navigation/page1.dart';
import 'package:firstproject/news/screen/List_news.dart';
import 'package:firstproject/responsive_design/responsive_screen.dart';
import 'package:firstproject/social_app/views/screens/main_socialapp_screen.dart';
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
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Text('AZ')),
              accountName: Text('Ahmad Zaben'),
              accountEmail: Text('azaben@gmail.com')),
          ListTile(
              title: const Text('All Tasks'),
              subtitle: const Text('Go to All Tasks Screen'),
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TaskManagement(
                          index: 0,
                        )));
              }),
          ListTile(
              title: const Text('Completed Tasks'),
              subtitle: const Text('Go to Completed Tasks Screen'),
              leading: const Icon(Icons.done),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TaskManagement(
                          index: 1,
                        )));
              }),
          ListTile(
              title: const Text('Incompleted Tasks'),
              subtitle: const Text('Go to Incompleted Tasks Screen'),
              leading: const Icon(Icons.work),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TaskManagement(
                          index: 2,
                        )));
              }),
        ]),
      ),
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
          navidateTo(context, '6- Stateful lecture', const NewStatefulWidget()),

          // 7- Task Managment
          navidateTo(context, '7- Task Managment', const TaskManagement()),
          // 8- Task Managment
          navidateTo(context, '8- Social Post', const MainSocialScreen()),
          // 9- Task Managment
          navidateTo(context, '9- Responsive Design', const ResponsiveScreen()),

          // 10- LocalizationScreen
          navidateTo(
              context, '10- LocalizationScreen', const LocalizationScreen()),
          // 10- Navigation Topic
          navidateTo(context, '11- Navigation Topic', Page1()),
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
          height: 30,
          child: Center(
              child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          )),
        ),
        onTap: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => navTo!))
            });
  }
}
