import 'package:astrology_app/astropage/HomePage_astrologer/hpclass.dart';
import 'package:astrology_app/astropage/profilepage/profileimage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AstroDashBoardPage extends StatefulWidget {
  const AstroDashBoardPage({super.key});

  @override
  State<AstroDashBoardPage> createState() => _AstroDashBoardPageState();
}

class _AstroDashBoardPageState extends State<AstroDashBoardPage> {
  bool online_Status = false;
  bool call_status = false;
  bool chat_status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/astro_logo.png',
                          height: MediaQuery.of(context).size.height * 0.18,
                          width: MediaQuery.of(context).size.width * 0.18,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.help_outline,
                                size: 27,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_outlined,
                                size: 27,
                                color: Colors.white,
                              ),
                            ),
                            FlutterSwitch(
                              width: MediaQuery.of(context).size.width * 0.17,
                              height:
                                  MediaQuery.of(context).size.height * 0.032,
                              activeColor: Colors.white.withOpacity(0.2),
                              inactiveToggleColor: Colors.white,
                              inactiveColor: Colors.white.withOpacity(0.2),
                              activeToggleColor: Colors.green,
                              valueFontSize: 10,
                              value: online_Status,
                              borderRadius: 15,
                              toggleSize: 18,
                              activeText: 'Online',
                              inactiveText: 'Offline',
                              activeTextColor: Colors.white,
                              showOnOff: true,
                              onToggle: (sStatus) {
                                setState(() {
                                  online_Status = sStatus;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Calls',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            HPFlutterswitch(
                              height:
                                  MediaQuery.of(context).size.height * 0.002,
                              width: 50,
                              onToggle: (sStatus) {
                                setState(
                                  () {
                                    call_status = sStatus;
                                  },
                                );
                              },
                              value: call_status,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Chats',
                              style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            HPFlutterswitch(
                              height: 20,
                              onToggle: (sStatus) {
                                setState(() {
                                  chat_status = sStatus;
                                });
                              },
                              value: chat_status,
                              width: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const HomeContainer(),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileImage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Boost my Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridClass(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today's Earnings:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      Icon(
                        Icons.currency_rupee,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        '720',
                        style: TextStyle(color: Colors.white),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
