import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:moda/details.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          tabs: const [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22)),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 22)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 22))
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Moda App',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'MyFonts',
            fontSize: 22,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          SizedBox(
            //color: Colors.blue.shade300,
            width: double.infinity,
            height: 140,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listElementleri("assets/model1.jpg", "assets/logo1.jpg"),
                const SizedBox(width: 25),
                listElementleri("assets/model2.jpg", "assets/logo2.jpg"),
                const SizedBox(width: 25),
                listElementleri("assets/model3.jpg", "assets/logo3.jpg"),
                const SizedBox(width: 25),
                listElementleri("assets/model4.jpg", "assets/logo2.jpg"),
                const SizedBox(width: 25),
                listElementleri("assets/model5.jpg", "assets/logo1.jpg"),
                const SizedBox(width: 25),
                listElementleri("assets/model6.jpg", "assets/logo3.jpg"),
                const SizedBox(width: 25),
                listElementleri("assets/model1.jpg", "assets/logo1.jpg"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(15),
              //color: Colors.red,
              child: Container(
                padding: const EdgeInsets.all(15),
                height: 550,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/model1.jpg"),
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                  fontFamily: 'MyFonts',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '35 mins ago',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'MyFonts',
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 54,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pretium a tellus id"
                      "sagittis. Phasellus imperdiet neque nunc, sed vulputate massa hendrerit eu.",
                      style: TextStyle(
                        fontFamily: 'MyFonts',
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPage(imgPath: "assets/model1.jpg"),
                            ));
                          },
                          child: Hero(
                            tag: 'assets/model1.jpg',
                            child: Container(
                              height: 250,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/model1.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(imgPath: "assets/model2.jpg"),
                                ));
                              },
                              child: Hero(
                                tag: 'assets/model2.jpg',
                                child: Container(
                                  height: 120,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage("assets/model2.jpg"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsPage(imgPath: "assets/model4.jpg"),
                                ));
                              },
                              child: Hero(
                                tag: 'assets/model4.jpg',
                                child: Container(
                                  height: 120,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                        image: AssetImage("assets/model4.jpg"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              '# Louis Vuitton',
                              style: TextStyle(
                                fontFamily: 'MyFonts',
                                fontSize: 14,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                fontFamily: 'MyFonts',
                                fontSize: 14,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 30,
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.7 K",
                          style: TextStyle(
                              fontFamily: 'MyFonts',
                              fontSize: 16,
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 30,
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "325",
                          style: TextStyle(
                              fontFamily: 'MyFonts',
                              fontSize: 16,
                              color: Colors.grey.withOpacity(0.5)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  size: 30,
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.3 K",
                                style: TextStyle(
                                    fontFamily: 'MyFonts',
                                    fontSize: 16,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
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
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgPath),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(logoPath),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(fontFamily: 'MyFonts', color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
