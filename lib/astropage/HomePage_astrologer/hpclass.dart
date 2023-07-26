import 'package:astrology_app/astropage/apply_leave_screen.dart';
import 'package:astrology_app/astropage/article/articles.dart';
import 'package:astrology_app/astropage/history.dart';
import 'package:astrology_app/astropage/chat.dart';
import 'package:astrology_app/astropage/earning_screen.dart';
import 'package:astrology_app/astropage/Go%20Live/go_live_screen.dart';
import 'package:astrology_app/astropage/login_hour.dart';
import 'package:astrology_app/astropage/payment_report_screen.dart';
import 'package:astrology_app/astropage/set_rate.dart';
import 'package:astrology_app/astropage/shortcuts_screen.dart';
import 'package:astrology_app/astropage/support_screen.dart';
import 'package:astrology_app/astropage/update_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Stack(
        children: [
          Image.asset('assets/images/rectangle.png'),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                        child: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Text(
                          '05th April',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '12 calls',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '9 chats',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Complete 2 more calls to \nachieve today’s incentive goal',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //-----------

          //--------
          Padding(
            padding: const EdgeInsets.only(left: 180, top: 20),
            child: Column(children: [
              CircularPercentIndicator(
                radius: 30,
                lineWidth: 5,
                percent: 0.65,
                progressColor: Colors.white60,
                backgroundColor: Colors.white.withOpacity(0.3),
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text(
                  '      65%\n Complete',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),

              //
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            '720',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Text(
                        'Earnings',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '12',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Call Received',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Waiting',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Canceled',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}

//-------------------------Percent Indicator--------------
class PercentProgressBar extends StatefulWidget {
  const PercentProgressBar({super.key});

  @override
  State<PercentProgressBar> createState() => _PercentProgressBarState();
}

class _PercentProgressBarState extends State<PercentProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircularPercentIndicator(
        radius: 30,
        lineWidth: 7,
        percent: 0.65,
        progressColor: Colors.white60,
        backgroundColor: Colors.white.withOpacity(0.3),
        circularStrokeCap: CircularStrokeCap.round,
        center: const Text(
          '      65%\n Complete',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
      ),

      //
      const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.currency_rupee_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    '720',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Text(
                'Earnings',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '12',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Call Received',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Waiting',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Canceled',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    ]);
  }
}

//---------------------------------Flutter Switch-----------------
class HPFlutterswitch extends StatefulWidget {
  const HPFlutterswitch(
      {super.key,
      required this.width,
      required this.height,
      required this.onToggle,
      required this.value});
  final double width;
  final double height;
  //final void onToggle;
  final bool value;
  final Function(bool) onToggle;

  @override
  State<HPFlutterswitch> createState() => _HPFlutterswitchState();
}

class _HPFlutterswitchState extends State<HPFlutterswitch> {
  bool online_status = false;
  bool call_status = false;
  bool chat_status = false;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      activeColor: Colors.white.withOpacity(0.2),
      inactiveToggleColor: Colors.white,
      inactiveColor: Colors.white.withOpacity(0.2),
      activeToggleColor: Colors.green,
      valueFontSize: 10,
      value: widget.value,
      borderRadius: 15,
      toggleSize: 15.0,
      activeTextColor: Colors.white,
      showOnOff: true,
      onToggle: widget.onToggle,
    );
  }
}

//-------------------------Grid View Class ----------------------------------------------
class GridClass extends StatefulWidget {
  const GridClass({super.key});

  @override
  State<GridClass> createState() => _GridClassState();
}

class _GridClassState extends State<GridClass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
          //shrinkWrap: true,
          physics: const BouncingScrollPhysics(
              parent: NeverScrollableScrollPhysics()),
          itemCount: astroHome.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            childAspectRatio: 0.95,
          ),
          shrinkWrap: true,

          itemBuilder: (context, index) => GestureDetector(
            onTap: () => tapped(index),
            child: AstroHome(
                image: astroHome[index].image, title: astroHome[index].title),
          ),
        ),
      ),
    );
  }

  tapped(int index) {
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CallDetails()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GoLivePage()));
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ShortcutsPage()));
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SetRate()));
    } else if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SupportPage()));
    } else if (index == 5) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginHour()));
    } else if (index == 6) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => UpdatePage()));
    } else if (index == 7) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PaymentReportPage()));
    } else if (index == 8) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    tabname: 'submit',
                  )));
    } else if (index == 9) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ApplyLeavePage()));
    } else if (index == 10) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EarningPage()));
    } else if (index == 11) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
    }
  }
}

class AstroHomeDetails {
  late String image, title;

  AstroHomeDetails({
    required this.image,
    required this.title,
  });
}

List<AstroHomeDetails> astroHome = [
  AstroHomeDetails(
    image: "assets/images/call_details.png",
    title: "History",
  ),
  AstroHomeDetails(
    image: "assets/images/go_live.png",
    title: "Go live",
  ),
  AstroHomeDetails(
    image: "assets/images/shortcuts.png",
    title: "Shortcuts",
  ),
  AstroHomeDetails(
    image: "assets/images/set_rate.png",
    title: "Set Rate",
  ),
  AstroHomeDetails(
    image: "assets/images/support.png",
    title: "Support",
  ),
  AstroHomeDetails(
    image: "assets/images/login_hours.png",
    title: "Login Hours",
  ),
  AstroHomeDetails(
    image: "assets/images/update.png",
    title: "Update",
  ),
  AstroHomeDetails(
    image: "assets/images/payment_report.png",
    title: "Payment Report",
  ),
  AstroHomeDetails(
    image: "assets/images/articles.png",
    title: "Articles",
  ),
  AstroHomeDetails(
    image: "assets/images/apply_leave.png",
    title: "Apply Leave",
  ),
  AstroHomeDetails(
    image: "assets/images/earnings.png",
    title: "Earnings",
  ),
  AstroHomeDetails(
    image: "assets/images/chat.png",
    title: "Chats",
  ),
];

class AstroHome extends StatelessWidget {
  const AstroHome({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // color: Colors.blue[400]
            ),
            child: Center(
              child: Image.asset(
                image,
                height: 22,
                width: 22,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(fontSize: 13, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
