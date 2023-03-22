import 'package:flutter/material.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moda App',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'MyFonts',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blue.shade300,
            width: double.infinity,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listElementleri('assets/model1.jpg', 'assets/logo1.jpg')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listElementleri(String imgPath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(image: AssetImage(imgPath))),
            )
          ],
        )
      ],
    );
  }
}
