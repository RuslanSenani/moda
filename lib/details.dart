import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String imgPath = '';
  DetailsPage({super.key, required this.imgPath});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.imgPath,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
