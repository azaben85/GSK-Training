import 'dart:io';

import 'package:firstproject/statefullwidget_lecture/widgets/accepted_conditions_widget.dart';
import 'package:firstproject/statefullwidget_lecture/widgets/liked_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewStatefulWidget extends StatefulWidget {
  const NewStatefulWidget({super.key});

  @override
  State<NewStatefulWidget> createState() => _NewStatefulWidgetState();
}

class _NewStatefulWidgetState extends State<NewStatefulWidget> {
  bool isDark = false;
/*
  stateless hot reload reload build function only
*/
  @override
  Widget build(BuildContext context) {
    String imageURL =
        'https://images.unsplash.com/photo-1660392750311-f50eeaa6c517?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80';

    return Theme(
      data: isDark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(title: const Text('My Profile')),
        body: Center(
          child: ListView(
            children: [
              // flaticon site
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      // color: Colors.pink,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/image1.jpg')),
                        color: Colors.pink,
                        //  borderRadius: BorderRadius.circular(20)  // BoxShape.circle border radius does not work with circle shape
                      ),
                      width: 70,
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Ahmad Zaben'),
                          Text('Since 28 min ago'),
                        ],
                      ),
                    ),
                    if (!Platform.isAndroid)
                      CupertinoSwitch(
                        onChanged: (value) {
                          isDark = value;
                          setState(() {});
                        },
                        value: isDark,
                      )
                    else
                      Switch(
                        onChanged: (value) {
                          isDark = value;
                          setState(() {});
                        },
                        value: isDark,
                      ),
                  ],
                ),
              ),
              Container(
                  //color: Colors.blue,
                  margin: const EdgeInsets.all(5),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    imageURL,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    IsLikedButton(),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Icon(Icons.share),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text('Hello, this is my first post'),
              ),
              const AcceptedConditions()
            ],
          ),
        ),
      ),
    );
  }
}
