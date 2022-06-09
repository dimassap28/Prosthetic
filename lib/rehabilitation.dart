import 'package:flutter/material.dart';
import 'package:prosthesis/theme.dart';
import 'dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class Rehabilitation extends StatefulWidget {
  const Rehabilitation({Key? key}) : super(key: key);

  @override
  State<Rehabilitation> createState() => _RehabilitationState();
}

class _RehabilitationState extends State<Rehabilitation> {
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
                  "assets/icon/bg_contact.jpg",
                  // fit: BoxFit.contain,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(53, 53, 53, 0.4)),
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
                    padding: const EdgeInsets.fromLTRB(20, 150, 200, 0),
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
                          "Achieve independence, with the most efficient gait possible.",
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 20),
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 150,
                          ),
                          InkWell(
                            onTap: () => launchUrl(
                              Uri.parse(
                                'https://wa.me/+6287777081250',
                              ),
                            ),
                            child: Container(
                              height: 52,
                              decoration: BoxDecoration(
                                color: orangecolor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Rehabilitation Services",
                                  style: whitetTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
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
