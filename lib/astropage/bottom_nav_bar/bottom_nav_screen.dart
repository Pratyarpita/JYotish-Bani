import 'package:astrology_app/astropage/HomePage_astrologer/dashboard_screen.dart';
import 'package:astrology_app/astropage/chat/connect_page.dart';
import 'package:astrology_app/astropage/payment_report_screen.dart';
import 'package:astrology_app/astropage/profilepage/profileimage.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.7),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: FloatingActionButton(
            child: const Icon(Icons.add_circle_outline_outlined,size: 30,),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), //padding for floatbutton
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 0,
          color: const Color.fromARGB(255, 68, 65, 65),
          child: Container(
            decoration: const BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(color: Color.fromARGB(255, 91, 91, 91)),vertical: BorderSide(color: Color.fromARGB(255, 91, 91, 91)))),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => _onTabSelected(0),
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: _currentIndex == 0 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: _currentIndex == 0 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => _onTabSelected(1),
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.chat,
                            color: _currentIndex == 1 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            'Connect',
                            style: TextStyle(
                              color: _currentIndex == 1 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => _onTabSelected(2),
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.payment,
                            color: _currentIndex == 2 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            'Payments',
                            style: TextStyle(
                              color: _currentIndex == 2 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Material(
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => _onTabSelected(3),
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.person_2,
                            color: _currentIndex == 3 ? Colors.blue : Colors.white,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: _currentIndex == 3 ? Colors.blue : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
      body: bodyContainer(),
    );  
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget bodyContainer() {
    var pagesData = [
      const AstroDashBoardPage(),  
      const ConnectPage(),
      const PaymentReportPage(),
      const ProfileImage(),
    ];
    return SizedBox(
      //color: Colors.amber,
      //width: double.infinity,
      //height: MediaQuery.of(context).size.height,
      //height: double.infinity,
      child: Center(child: pagesData.elementAt(_currentIndex)),
    );
  }
}