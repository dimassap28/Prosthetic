import 'package:flutter/material.dart';
import 'package:prosthesis/login.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dashboard.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/icon/sign_inup/bg_image.jpg",
                  fit: BoxFit.contain,
                  // fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      automaticallyImplyLeading: true,
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    color: Colors.transparent,
                    // color: orangecolor,
                    padding: const EdgeInsets.fromLTRB(20, 150, 190, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prosthesis App",
                          style: whitetTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: normal,
                            shadows: <Shadow>[
                              Shadow(
                                offset: const Offset(1, 1),
                                blurRadius: 1,
                                color: blackcolor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Strength is not something you have, it’s something you find",
                          style: whitetTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                            shadows: <Shadow>[
                              Shadow(
                                offset: const Offset(1, 1),
                                blurRadius: 1,
                                color: blackcolor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: whitecolor,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Register",
                            style: blacktTextStyle.copyWith(
                                fontSize: 20, fontWeight: bold),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            height: 52,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: TextField(
                                maxLines: 1,
                                style: blacktTextStyle.copyWith(fontSize: 16),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  filled: false,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    child: SvgPicture.asset(
                                      "assets/icon/sign_inup/Message.svg",
                                      color:
                                          const Color.fromRGBO(54, 60, 60, 0.5),
                                    ),
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  fillColor: Theme.of(context)
                                      .inputDecorationTheme
                                      .fillColor,
                                  contentPadding: EdgeInsets.zero,
                                  hintText: 'Email Address',
                                  hintStyle: blacktTextStyle.copyWith(
                                    color:
                                        const Color.fromRGBO(54, 60, 60, 0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            height: 52,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: TextField(
                                obscureText: true,
                                maxLines: 1,
                                style: blacktTextStyle.copyWith(fontSize: 16),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  filled: false,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    child: SvgPicture.asset(
                                      "assets/icon/sign_inup/Hide.svg",
                                      color:
                                          const Color.fromRGBO(54, 60, 60, 0.5),
                                    ),
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  fillColor: Theme.of(context)
                                      .inputDecorationTheme
                                      .fillColor,
                                  contentPadding: EdgeInsets.zero,
                                  hintText: 'Password',
                                  hintStyle: blacktTextStyle.copyWith(
                                    color:
                                        const Color.fromRGBO(54, 60, 60, 0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            height: 52,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: TextField(
                                obscureText: true,
                                maxLines: 1,
                                style: blacktTextStyle.copyWith(fontSize: 16),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  filled: false,
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                    child: SvgPicture.asset(
                                      "assets/icon/sign_inup/Hide.svg",
                                      color:
                                          const Color.fromRGBO(54, 60, 60, 0.5),
                                    ),
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  fillColor: Theme.of(context)
                                      .inputDecorationTheme
                                      .fillColor,
                                  contentPadding: EdgeInsets.zero,
                                  hintText: 'Confirm Password',
                                  hintStyle: blacktTextStyle.copyWith(
                                    color:
                                        const Color.fromRGBO(54, 60, 60, 0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Dashboard(),
                                ),
                              );
                            },
                            child: Container(
                              height: 52,
                              decoration: BoxDecoration(
                                color: orangecolor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Register",
                                  style: whitetTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have account?",
                                style: blacktTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Login(),
                                    ),
                                  );
                                },
                                child: Text(
                                  " Login",
                                  style: orangetTextStyle.copyWith(
                                      fontSize: 16, fontWeight: bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
