import 'package:app_store/pages/homePage.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(250.0),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.grey.shade900, Colors.black54],
              stops: const [0.2, 1.2],
              tileMode: TileMode.mirror,
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              transform: const GradientRotation(-1 / 4),
            )),
            constraints: BoxConstraints.expand(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120.0),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black54,
                              Colors.grey.shade900,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0.1, 0.2],
                            transform: const GradientRotation(-1 / 4),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10.0,
                        left: 9.0,
                        child: Container(
                          width: 130.0,
                          height: 130.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(120.0),
                          ),
                          child: Image.asset("images/sea-waves.png",
                              color: const Color.fromARGB(255, 135, 217, 204)),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Touch ID sensor to verify",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                            Text(
                              "transaction",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "please verify your Identity Using TZouch ID and",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0),
                            ),
                            Text(
                              "prceed transaction",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                            return HomePage();
                          })));
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          Positioned(
                              top: 20.0,
                              left: 20.0,
                              child: CircleAvatar(
                                radius: 30.0,
                                backgroundColor:
                                    Color.fromARGB(255, 135, 217, 204),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        width: 5,
                                        height: 3,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(
                                      Icons.east_outlined,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
