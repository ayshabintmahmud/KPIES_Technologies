import 'package:flutter/material.dart';
import 'package:login_app/widgets/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background photo
            Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Black overlay
            Container(
              color: Colors.black.withOpacity(0.3),
              height: double.infinity,
            ),
            SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/mainLogo.png',
                        width: 200,
                      ),
                    ),
                    const Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 32.0,
                            right: 30,
                          ),
                          child: Text(
                            'BUYING PROPERTIES\nMADE EASY',
                            style: TextStyle(
                              fontFamily: 'Baskervville',
                              fontSize: 22,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffFFD700),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 210,
                        right: 11,
                        left: 17,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Take a tour ',
                                  style: TextStyle(
                                    fontFamily: 'Baskervville',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFFffd700),
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 18.0,
                                    color: Color(0xFFffd700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            'Welcome, James',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFffd700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CardContent(
                                image: Image.asset(
                                  "assets/home.png",
                                  width: 60,
                                  height: 60,
                                ),
                                title: "Need a\nProperty?",
                                subtitle: "Own a Property & Pay with Ease",
                              ),
                              CardContent(
                                image: Image.asset(
                                  "assets/agent.png",
                                  width: 70,
                                  height: 60,
                                ),
                                title: "Agents &\nDevelopers",
                                subtitle: "Post & Sell Your Properties",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CardContent(
                                image: Image.asset(
                                  "assets/finance.png",
                                  width: 60.0,
                                  height: 60.0,
                                ),
                                title: "Mortgage\nFinancing",
                                subtitle:
                                    "Access funds to power that ongoing project",
                              ),
                              CardContent(
                                image: Image.asset(
                                  "assets/User.png",
                                  width: 50.0,
                                  height: 50.0,
                                ),
                                title: "My Account\nArea",
                                subtitle: "Take me to my Dashboard",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
