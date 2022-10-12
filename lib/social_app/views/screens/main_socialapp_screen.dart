import 'package:firstproject/social_app/views/screens/all_posts.dart';
import 'package:firstproject/social_app/views/screens/all_posts_favorite.dart';
import 'package:flutter/material.dart';

class MainSocialScreen extends StatefulWidget {
  const MainSocialScreen({super.key});

  @override
  State<MainSocialScreen> createState() => _MainSocialScreenState();
}

class _MainSocialScreenState extends State<MainSocialScreen> {
  int currentIndex = 0;
  late PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Posts'),
      ),
      body: PageView(controller: pageController, children: [
        PostWidget(onChange: navidateToFav),
        PostFavoriteWidget(
          onChange: navidateToHome,
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          navidateTo(value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
      ),
    );
  }

  navidateToFav() {
    navidateTo(1);
  }

  navidateToHome() {
    navidateTo(0);
  }

  navidateTo(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
    currentIndex = index;
    setState(() {});
  }
}
