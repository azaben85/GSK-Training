import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resposive Design'),
      ),
      body: Container(
        width: 150.w,
        height: 300.h,
        color: MediaQuery.of(context).orientation == Orientation.portrait
            ? Colors.red
            : Colors.orange,
      ),
    );
  }
}
