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
      body: Stack(children: [
        Hero(
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
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 100,
                        height: 110,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(widget.imgPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LAMINATED",
                          style: TextStyle(fontSize: 22, fontFamily: 'MyFonts'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "Louis Vuitton",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'MyFonts',
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  alignment: Alignment.center,
                                  image: AssetImage('assets/logo1.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width - 190,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pretium a tellus id",
                            style: TextStyle(
                                fontFamily: 'MyFonts',
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$6500',
                        style: TextStyle(fontFamily: 'MyFonts', fontSize: 22),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.brown,
                          child: Center(child: Icon(Icons.arrow_forward_ios)),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        Positioned(
            left: 50,
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      "LAMINATED",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'MyFonts',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
