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
              Container(
                // color: Colors.pink,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink,
                  //  borderRadius: BorderRadius.circular(20)  // BoxShape.circle border radius does not work with circle shape
                ),
                width: 70,
                height: 70,
                child: Image.network(
                  post.postUserModel!.image!,
                  fit: BoxFit.fill,
                ),
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
