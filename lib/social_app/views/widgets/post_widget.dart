import 'package:firstproject/social_app/models/post_model.dart';
import 'package:firstproject/social_app/views/widgets/favorite.dart';
import 'package:flutter/material.dart';

class PostCardWidget extends StatelessWidget {
  final PostModel post;
  Function onChange;
  PostCardWidget({super.key, required this.post, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(post.postUserModel!.image!),
                radius: 30,
              ),
              Text(' ${post.postUserModel!.name}')
            ],
          ),
          Image.network(
            post.image!,
            fit: BoxFit.contain,
          ),
          Row(
            children: [
              Text('${post.content}'),
              FavoriteWidget(
                post: post,
                onChange: onChange,
              )
            ],
          ),
        ],
      ),
    );
  }
}
