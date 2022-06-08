import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

String name = 'Tia';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DateTime now = DateTime.now();

  String printDate = DateFormat("EEEE, dd MMMM yyyy").format(DateTime.now());

  Widget menus({
    required String image,
    required String menuTitle,
  }) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(24),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              width: 1,
              color: graycolor,
            ),
          ),
          child: SvgPicture.asset(
            image,
            color: bluecolor,
          ),
        ),
        Text(
          menuTitle,
          style: blacktTextStyle.copyWith(fontSize: 16, fontWeight: normal),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  List slider = [
    Image.asset(
      "assets/icon/dashboard/slider.png",
    ),
    Image.asset(
      "assets/icon/dashboard/slider.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        // bottom: true,
        child: Container(
          // color: Colors.blue,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello, ",
                            style: blacktTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            "$name!",
                            style: blacktTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        printDate,
                        style: blacktTextStyle.copyWith(fontSize: 20),
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/icon/dashboard/profile.png",
                    height: 60,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Image.asset(
              //   "assets/icon/dashboard/slider.png",
              //   width: double.infinity,
              //   fit: BoxFit.fitWidth,
              // ),

              CarouselSlider(
                options: CarouselOptions(height: 240),
                items: slider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          // margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            color: Color(0xFFF0F0F0),
                          ),
                          child: Text(
                            'text $i',
                            style: const TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 66,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: TextField(
                    maxLines: 1,
                    style: blacktTextStyle.copyWith(fontSize: 20),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: false,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          "assets/icon/dashboard/Search.svg",
                          color: const Color.fromRGBO(54, 60, 60, 0.5),
                          // width: 8,
                          // height: 8,
                          // fit: BoxFit.fitWidth,
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      fillColor:
                          Theme.of(context).inputDecorationTheme.fillColor,
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search anything here',
                      hintStyle: blacktTextStyle.copyWith(
                        color: const Color.fromRGBO(54, 60, 60, 0.5),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Menus",
                style: blacktTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              Row(
                children: [
                  menus(
                    image: "assets/icon/dashboard/Paper.svg",
                    menuTitle: "Prosthesis\nInformation",
                  ),
                  const Spacer(),
                  menus(
                    image: "assets/icon/dashboard/Call.svg",
                    menuTitle: "Local\nProviders",
                  ),
                  const Spacer(),
                  menus(
                    image: "assets/icon/dashboard/Calling.svg",
                    menuTitle: "International\nProviders",
                  ),
                  const Spacer(),
                  menus(
                      image: "assets/icon/dashboard/Heart.svg",
                      menuTitle: "Prosthesis\nRehabilitation")
                ],
              ),
              Row(
                children: [
                  Text(
                    "Articles",
                    style: blacktTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: bluetTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/icon/dashboard/thumbnail1.png",
                            width: 200,
                            height: 176,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text(
                          "Kaki Palsu Prostetik",
                          style: blacktTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          "lorem ipsum dolor sit",
                          style: blacktTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: normal,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/icon/dashboard/thumbnail.png",
                            width: 200,
                            height: 176,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Text(
                          "Manfaat Kaki Palsu",
                          style: blacktTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          "lorem ipsum dolor sit",
                          style: blacktTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: normal,
                          ),
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
    );
  }
}
