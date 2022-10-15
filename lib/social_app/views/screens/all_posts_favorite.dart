// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:firstproject/social_app/repositories/dummy_data.dart';
import 'package:firstproject/social_app/views/widgets/post_widget.dart';

class PostFavoriteWidget extends StatefulWidget {
  Function onChange;
  PostFavoriteWidget({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  State<PostFavoriteWidget> createState() => _PostFavoriteWidgetState();
}

class _PostFavoriteWidgetState extends State<PostFavoriteWidget> {
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
            onChange: () {
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
