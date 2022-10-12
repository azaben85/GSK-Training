import 'package:firstproject/social_app/repositories/dummy_data.dart';
import 'package:firstproject/social_app/views/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class PostFavoriteWidget extends StatelessWidget {
  Function onChange;
  PostFavoriteWidget({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    List inPosts = posts.where((element) => element.isFav!).toList();
    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemCount: inPosts.length,
        itemBuilder: (context, index) {
          return PostCardWidget(
            post: inPosts[index],
            onChange: onChange,
          );
        },
      ),
    );
  }
}
