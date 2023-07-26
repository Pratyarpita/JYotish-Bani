import 'package:astrology_app/allclass/astroclassall.dart';
import 'package:astrology_app/astropage/HomePage_astrologer/dashboard_screen.dart';
import 'package:astrology_app/controller/controller.dart';
import 'package:astrology_app/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AstroLoginScreen extends StatefulWidget {
  const AstroLoginScreen({super.key});

  @override
  State<AstroLoginScreen> createState() => _AstroLoginScreenState();
}

class _AstroLoginScreenState extends State<AstroLoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void storeData({required String token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', token);
    // prefs.setString('id', id);
    prefs.setBool('isLogged', true);
  }

  void signIn() async {
    try {
      LoginModel user =
          await Controller.login(emailController.text, passwordController.text);
      if (user.token != null) {
        storeData(token: user.token!);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Login Successfully"),
        ));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AstroDashBoardPage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Login Failed"),
        ));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something Went Wrong"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.only(right: 25, left: 25),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/astro_logo.png',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      'Tell us about you',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                LogP(controller: emailController, text: 'User Name'),
                const SizedBox(
                  height: 20,
                ),
                LogP(controller: passwordController, text: 'Password'),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      signIn();
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const AstroDashBoardPage()),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 10, 123, 216),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text(
                      'Continue',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
