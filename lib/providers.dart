import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:prosthesis/international_providers.dart';
import 'package:prosthesis/local_providers.dart';

import 'package:prosthesis/theme.dart';

import 'dashboard.dart';

void main() {
  runApp(const Providers());
}

class Providers extends StatefulWidget {
  const Providers({Key? key}) : super(key: key);
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<Providers>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const Dashboard());
                  },
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/icon/providers/left.svg',
                      width: getWidth(25),
                      height: getHeight(25),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Providers',
                  style: TextStyle(
                    color: const Color(0xff363C3C),
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/icon/providers/filter.svg',
                    width: getWidth(25),
                    height: getHeight(25),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(25),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: orangecolor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(14)),
            width: 280,
            height: 40,
            child: TabBar(
              controller: _tabController,
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              unselectedLabelColor: orangecolor,
              indicator: BoxDecoration(
                  color: orangecolor, borderRadius: BorderRadius.circular(13)),
              tabs: const [
                Tab(
                  text: 'Local',
                ),
                Tab(
                  text: 'Inter',
                )
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: const [LocalProviders(), InterProviders()]))
        ]),
      ),
    );
  }
}
