import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  final String imageURL;
  ImageDetail(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: imageURL,
            child: Image.network(
              imageURL,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
