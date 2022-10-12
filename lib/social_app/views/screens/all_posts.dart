import 'package:firstproject/social_app/repositories/dummy_data.dart';
import 'package:firstproject/social_app/views/widgets/post_widget.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  Function onChange;
  PostWidget({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCardWidget(
            post: posts[index],
            onChange: onChange,
          );
        },
      ),
    );
  }
}
