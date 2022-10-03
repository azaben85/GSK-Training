import 'package:flutter/material.dart';

class ImageSession extends StatelessWidget {
  const ImageSession({super.key});

  @override
  Widget build(BuildContext context) {
    String imageURL =
        'https://images.unsplash.com/photo-1660392750311-f50eeaa6c517?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80';

    String imageURL2 =
        'https://images.unsplash.com/photo-1663077401448-5e31749a9349?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80';

    return Scaffold(
        appBar: AppBar(
          title: const Text('Images'),
        ),
        body: SingleChildScrollView(
          //dragStartBehavior: DragStartBehavior.down,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const Text('Images'),
              // circle shape
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
                width: 400,
                height: 300,
                child: const Center(
                    child: Text(
                  'Circle Shape',
                  style: TextStyle(
                      color: Colors.white,
                      //  fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                //padding: const EdgeInsets.all(50),
                //margin: const EdgeInsets.all(100),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/Images/image1.jpg')),
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                width: 400,
                height: 300,
                child: const Center(
                    child: Text(
                  'Rectangular Shape ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ), //ClipRect()
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
                    fit: BoxFit.contain,
                  )),
              Container(
                  padding: const EdgeInsets.all(50),
                  margin: const EdgeInsets.all(100),
                  color: Colors.pink,
                  width: 400,
                  height: 300,
                  child: Image.asset(
                    'assets/Images/image1.jpg',
                    fit: BoxFit.cover,
                  )),
              Container(
                  color: Colors.green,
                  width: 400,
                  height: 300,
                  child: Image.network(
                    imageURL2,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
        ));
  }
}

// Images 4 types

/*
1- Image Network => Image.network
2- Image Assets  
3- Image.file => phone Galary
4- Image.Memory => mobile memory

*/
