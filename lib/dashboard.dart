import 'package:flutter/material.dart';
import 'package:prosthesis/international_providers.dart';
import 'package:prosthesis/local_providers.dart';
import 'package:prosthesis/login.dart';
import 'package:prosthesis/prosthesis_info.dart';
import 'package:prosthesis/rehabilitation.dart';
import 'package:prosthesis/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:sizer/sizer.dart';

void main() {
  runApp(
    const Dashboard(),
  );
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String name = 'Tia';

  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> slider = [
    SizedBox(
      height: 200,
      child: Image.asset(
        "assets/icon/dashboard/slider.png",
      ),
    ),
    SizedBox(
      height: 200,
      child: Image.asset(
        "assets/icon/dashboard/slider.png",
      ),
    ),
    SizedBox(
      height: 200,
      child: Image.asset(
        "assets/icon/dashboard/slider.png",
      ),
    ),
  ];

  DateTime now = DateTime.now();

  String printDate = DateFormat("EEEE, dd MMMM yyyy").format(
    DateTime.now(),
  );

  Widget menus({
    required String image,
    required String menuTitle,
    required Widget widget,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => widget),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(20),
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                width: 1,
                color: graycolor,
              ),
            ),
            child: SvgPicture.asset(
              image,
              color: orangecolor,
            ),
          ),
        ),
        Text(
          menuTitle,
          style: blacktTextStyle.copyWith(fontSize: 14, fontWeight: normal),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget article({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            image,
            width: 156,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: blacktTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
        Text(
          subtitle,
          style: blacktTextStyle.copyWith(
            fontSize: 14,
            fontWeight: normal,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whitecolor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
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
                        style: blacktTextStyle.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/icon/dashboard/profile.png",
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                items: slider,
                carouselController: _controller,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        _current = index;
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: slider.asMap().entries.map(
                  (entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(2),
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? whitecolor
                                  : orangecolor)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: SvgPicture.asset(
                          "assets/icon/dashboard/Search.svg",
                          color: const Color.fromRGBO(54, 60, 60, 0.5),
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
              const SizedBox(
                height: 20,
              ),
              Text(
                "Menus",
                style: blacktTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    menus(
                      image: "assets/icon/dashboard/Paper.svg",
                      menuTitle: "Prosthesis\nInformation",
                      widget: const ProsthesisInfo(),
                    ),
                    const Spacer(),
                    menus(
                      image: "assets/icon/dashboard/Call.svg",
                      menuTitle: "Local\nProviders",
                      widget: const localProviders(),
                    ),
                    const Spacer(),
                    menus(
                      image: "assets/icon/dashboard/Calling.svg",
                      menuTitle: "International\nProviders",
                      widget: const interProviders(),
                    ),
                    const Spacer(),
                    menus(
                      image: "assets/icon/dashboard/Heart.svg",
                      menuTitle: "Prosthesis\nRehabilitation",
                      widget: const Rehabilitation(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Articles",
                    style: blacktTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: orangetTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: bold,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    // vertical: 10,
                    ),
                child: Row(
                  children: [
                    article(
                      image: "assets/icon/dashboard/thumbnail1.png",
                      title: "Kaki Palsu Prostetik",
                      subtitle: "lorem ipsum dolor sit",
                    ),
                    const Spacer(),
                    article(
                      image: "assets/icon/dashboard/thumbnail.png",
                      title: "Manfaat Kaki Palsu",
                      subtitle: "lorem ipsum dolor sit",
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
