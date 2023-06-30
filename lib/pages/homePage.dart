// ignore_for_file: unnecessary_string_interpolations, duplicate_ignore

import 'dart:math';

import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.grey.shade900,
        leading: Container(
          transformAlignment: Alignment.center,
          transform: Matrix4.rotationZ(14.1),
          child: const Icon(
            Icons.clear_all_outlined,
            size: 40.0,
            color: Colors.grey,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                    image: AssetImage("images/boy.png"), fit: BoxFit.cover),
              ),
            ),
          )
        ],
      ),
////body
      body: Body(),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.transparent,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: const Text("Home"),
            selectedColor: Color.fromARGB(255, 150, 37, 37),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            title: const Text("Search"),
            selectedColor: Color.fromARGB(255, 150, 37, 37),
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: const Text("Profile"),
            selectedColor: Color.fromARGB(255, 150, 37, 37),
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Stack(children: const [
              Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              ),
              Positioned(
                top: 5.0,
                left: 14.5,
                child: CircleAvatar(
                  radius: 2.5,
                  backgroundColor: Color.fromARGB(
                    255,
                    135,
                    217,
                    204,
                  ),
                ),
              )
            ]),
            title: const Text("Likes"),
            selectedColor: Color.fromARGB(255, 150, 37, 37),
          ),
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List shopp = [
    {
      "Icon": Icons.redeem_outlined,
      "Case": "Shopping",
      "Price": "300.00",
    },
    {
      "Icon": Icons.drive_eta_outlined,
      "Case": "Cars",
      "Price": "400.00",
    },
    {
      "Icon": Icons.pets_outlined,
      "Case": "Animal",
      "Price": "250.00",
    },
  ];
  List stateShopp = [
    {
      "Icon": Icons.local_pizza_outlined,
      "Case": "Shopping",
      "Price": "300.00",
      "Sub": "Food"
    },
    {
      "Icon": Icons.drive_eta_outlined,
      "Case": "Cars",
      "Price": "400.00",
      "Sub": "KIA"
    },
    {
      "Icon": Icons.pets_outlined,
      "Case": "Animal",
      "Price": "250.00",
      "Sub": "Cat"
    },
  ];
  var stateOfIncome = false, stateOfOutcome = true;
  var a = [
    "0.1",
    "0.2",
    "0.3",
    "0.4",
    "0.5",
    "0.6",
    "0.7",
    "0.8",
    "0.9",
    "0.10"
  ];
  var num = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.10];
  double min = 0.0, max = 1.0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      for (var i = 0; i < 10; i++) {
        Random random = new Random();

        num[i] = (random.nextDouble()) as double;
        a[i] = num[i].toStringAsFixed(1);
        print("$i=${a[i]}");
      }
    });

    return SingleChildScrollView(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Available Balance",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "\$4500",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Stack(
                                children: const [
                                  CircleAvatar(
                                    radius: 27.0,
                                    backgroundColor: Colors.black,
                                  ),
                                  Positioned(
                                      top: 7.0,
                                      left: 7.5,
                                      child: CircleAvatar(
                                        radius: 20.0,
                                        backgroundColor: Color.fromARGB(
                                          255,
                                          135,
                                          217,
                                          204,
                                        ),
                                        child: Icon(
                                          Icons.date_range_outlined,
                                          color: Colors.black,
                                          size: 22.0,
                                        ),
                                      ))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Income",
                              style: TextStyle(
                                color: stateOfIncome == false
                                    ? Colors.grey
                                    : const Color.fromARGB(
                                        255,
                                        135,
                                        217,
                                        204,
                                      ),
                              ),
                            ),
                            SizedBox(
                                width: 170,
                                child: Divider(
                                  color: stateOfIncome == false
                                      ? Colors.grey
                                      : const Color.fromARGB(
                                          255,
                                          135,
                                          217,
                                          204,
                                        ),
                                  thickness: 2.0,
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Outcome",
                              style: TextStyle(
                                color: stateOfOutcome == false
                                    ? Colors.grey
                                    : const Color.fromARGB(
                                        255,
                                        135,
                                        217,
                                        204,
                                      ),
                              ),
                            ),
                            SizedBox(
                                width: 170,
                                child: Divider(
                                  color: stateOfOutcome == false
                                      ? Colors.grey
                                      : const Color.fromARGB(
                                          255,
                                          135,
                                          217,
                                          204,
                                        ),
                                  thickness: 2.0,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AudioWave(
                            height: 140,
                            width: 350,
                            spacing: 26,
                            alignment: 'bottom',
                            animationLoop: 500,
                            beatRate: const Duration(milliseconds: 500),
                            bars: [
                              AudioWaveBar(heightFactor: 1, gradient: color1()),
                              AudioWaveBar(
                                  heightFactor: num[1], gradient: color2()),
                              AudioWaveBar(
                                  heightFactor: num[2], gradient: color1()),
                              AudioWaveBar(
                                  heightFactor: num[3], gradient: color2()),
                              AudioWaveBar(
                                  heightFactor: num[4], gradient: color1()),
                              AudioWaveBar(
                                  heightFactor: num[5], gradient: color2()),
                              AudioWaveBar(
                                  heightFactor: num[6], gradient: color1()),
                              AudioWaveBar(
                                  heightFactor: num[7], gradient: color2()),
                              AudioWaveBar(
                                  heightFactor: num[8], gradient: color1()),
                              AudioWaveBar(
                                  heightFactor: num[9], gradient: color2()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "1.0",
                        style: TextStyle(color: Colors.grey),
                      ),
                      // ignore: unnecessary_string_interpolations
                      Text(
                        "${a[1]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[2]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[3]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[4]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[5]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[6]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[7]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[8]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "${a[9]}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Total Spent",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text(
                                "\$1,520.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.grey,
                              size: 26.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: shopp.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 250,
                                color: const Color.fromARGB(255, 135, 217, 204),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 60.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            shopp[index]["Icon"],
                                            size: 40.0,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${shopp[index]["Case"]}",
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: Text(
                                              "\$${shopp[index]['Price']}",
                                              style: const TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                  ),
                ),

                /////////////////////

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 2.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: MediaQuery.of(context).size.height * 0.34,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: shopp.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 5.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  child: ListTile(
                                    title: Text(
                                      "${stateShopp[index]['Case']}",
                                      style: const TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      "${stateShopp[index]["Sub"]}",
                                      style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        // ignore: sort_child_properties_last
                                        child: Center(
                                          child: Icon(
                                            stateShopp[index]["Icon"],
                                            size: 30.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.black,
                                                Colors.grey.shade900,
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            )),
                                      ),
                                    ),
                                    trailing: Text(
                                      "\$${stateShopp[index]['Price']}",
                                      style: const TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )),
                          );
                        })),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient color1() {
    return LinearGradient(
      colors: [
        // ignore: unnecessary_const
        const Color.fromARGB(
          255,
          135,
          217,
          204,
        ),
        Colors.grey.shade900
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  LinearGradient color2() {
    return LinearGradient(
      colors: [
        // ignore: unnecessary_const, prefer_const_constructors
        Color.fromARGB(255, 150, 37, 37),
        Colors.grey.shade900
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
