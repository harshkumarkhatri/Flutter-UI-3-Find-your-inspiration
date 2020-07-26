import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.white),
      home: MyApp1(),
    );
  }
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              height: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                  color: Colors.white70),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Find Your",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Inspiration",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.grey[100],
                    ),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search)),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Search you're looking for",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              alignment: Alignment.topLeft,
              child: Text(
                "Promo Today",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 190,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Card(
                    color: Colors.grey[50],
                    elevation: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            height: 172,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://www.netcetra.com/images/howto_images/paint_resize-screen.jpg"),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 94,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "https://image.shutterstock.com/image-photo/largeformat-panorama-fullflowing-wide-river-260nw-1132824119.jpg"))),
                      ),
                      // ),
                      Column(
                        children: [
                          SizedBox(
                            height: 60,
                            width: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Best Design",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
