import 'package:astrology_app/astropage/splash/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ForgotClass extends StatefulWidget {
  const ForgotClass({super.key, required this.labeltext});

  @override
  State<ForgotClass> createState() => _ForgotClassState();
  final String labeltext;
}

class _ForgotClassState extends State<ForgotClass> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 8.0,
            bottom: 8.0,
            top: 8.0,
          ),
          hintText: 'Email Id',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 129, 129, 129),
          ),
          focusColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Enter an Email address";
          } else if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-=?^_`{|}~]+@[a-zA-Z0-9]+\.[com]{3}$")
              .hasMatch(value)) {
            return " Please Enter a Valid Email Address";
          }
          return null;
        },
      ),
    );
  }
}

//-------------otp class--------------------------------------
class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final GlobalKey<FormState> _otp = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            key: _otp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Enter Verification Code',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 234, 227, 227)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                  child: Text('Code is send to Entered email Id',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Pinput(
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  submittedPinTheme: submittedPinTheme,
                  validator: (s) {
                    return s == '4567' ? null : 'Pin is incorrect';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_otp.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmPassword()));
                      }
                    },
                    child: const Text('SUBMIT'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Edit Email Address',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 131, 146, 227),
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//----------------confirm password---------------------
class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final GlobalKey<FormState> _passkey = GlobalKey<FormState>();
  TextEditingController newpass = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Form(
                key: _passkey,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/newpass.jpg'),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'New Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: newpass,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      maxLength: 15,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: (value) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        } else if (!regex.hasMatch(value)) {
                          return "Password should contain upper,lower,digit \nand special characters";
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: confirmpass,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      maxLength: 15,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.2),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      validator: (value) {
                        RegExp regex = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 8) {
                          return "Password must be at least 8 characters";
                        } else if (!regex.hasMatch(value)) {
                          return "Password should contain upper,lower,digit \nand special characters";
                        } else if (value != newpass.text) {
                          return 'Password doesnot Match';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_passkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AstroLoginScreen()));
                          }
                        },
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.blue.shade400),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
