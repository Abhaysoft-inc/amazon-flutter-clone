// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, unused_local_variable, unnecessary_new

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get image => null;

  @override
  Widget build(BuildContext context) {
    var container = new Container(
      width: 200,
      height: 90,
      color: Colors.blue,
    );
    List<String> countries = [
      "https://m.media-amazon.com/images/I/110goaYwsDL._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/11luqHr9bsL._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/11n0LdtsN7L._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/31ICLWjUdHL._SX100_SY100_.png",
      "https://m.media-amazon.com/images/I/11S4r-bgNEL._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/21xXjwTSVIL._SX100_SY100_.png",
      "https://m.media-amazon.com/images/I/312t+JcSoDL._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/21Iwonkul+L._SX100_SY100_.png",
      "https://m.media-amazon.com/images/I/11V7tDHLoyL._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/118lbTsRMWL._SX100_SY100_.jpg",
      "https://m.media-amazon.com/images/I/11Y884YgKnL._SX100_SY100_.jpg",
    ];

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(136, 12, 233, 185),
          title: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 45,
                color: Color.fromARGB(80, 33, 243, 180),
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Deliver to Abhay - Gauri Bazar 274202',
                      style: TextStyle(fontFamily: 'Amazon Ember'),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp),
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: countries.map((country) {
                      return Container(
                          color: Colors.white,
                          height: 93,
                          width: 85,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 9),
                                child: Image.network(
                                  country,
                                  height: 55,
                                  width: 60,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Mobiles',
                                  style: TextStyle(fontFamily: 'Amazon Ember'),
                                ),
                              )
                            ],
                          ));
                    }).toList(),
                  ))
              // here we have to write

              ,
              // Container(
              //   color: Colors.red,
              //   // height: 275,
              //   // width: 432,
              //   child: FittedBox(
              //     fit: BoxFit.contain,
              //     child: Image.network(
              //       'https://m.media-amazon.com/images/I/612VcOteB-L._SR412,360_.jpg',
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),

              Container(
                height: 465,
                child: new Stack(
                  children: <Widget>[
                    new Image.network(
                        'https://m.media-amazon.com/images/I/612VcOteB-L._SR412,360_.jpg'),
                    new Positioned(
                        left: 2,
                        top: 272,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                child: Container(
                                  color: Colors.red,
                                  width: 150,
                                  height: 180,
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.red,
                                  width: 150,
                                  height: 180,
                                ),
                              ),
                              Card(
                                child: Container(
                                  color: Colors.red,
                                  width: 150,
                                  height: 180,
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Image.network(
                  'https://m.media-amazon.com/images/I/612VcOteB-L._SR412,360_.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
