import 'package:flutter/material.dart';

class IsLikedButton extends StatefulWidget {
  const IsLikedButton({super.key});

  @override
  State<IsLikedButton> createState() => _IsLikedButtonState();
}

class _IsLikedButtonState extends State<IsLikedButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        Icons.favorite,
        color: isLiked == true ? Colors.red : Colors.grey,
        size: isLiked == true ? 60 : 50,
      ),
      onTap: () {
        isLiked = !isLiked;
        setState(() {});
      },
    );
  }
}
