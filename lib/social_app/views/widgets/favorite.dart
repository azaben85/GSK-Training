import 'package:firstproject/social_app/models/post_model.dart';
import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final PostModel post;
  Function onChange;
  FavoriteWidget({super.key, required this.post, required this.onChange});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        Icons.favorite,
        color: widget.post.isFav ?? false ? Colors.red : Colors.grey,
      ),
      onTap: () {
        widget.post.isFav = !widget.post.isFav!;
        widget.onChange();
        setState(() {});
      },
    );
  }
}
