import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prosthesis/dashboard.dart';
import 'package:sizer/sizer.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const ProsthesisInfo());
}

double height = AppBar().preferredSize.height;

class ProsthesisInfo extends StatefulWidget {
  const ProsthesisInfo({Key? key}) : super(key: key);

  @override
  State<ProsthesisInfo> createState() => _ProsthesisInfoState();
}

class _ProsthesisInfoState extends State<ProsthesisInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 3.h,
        backgroundColor: const Color(0x00ffffff),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashboard(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 3.5.h,
                    height: 3.5.h,
                    child: SvgPicture.asset(
                      'assets/icon/providers/left.svg',
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Prosthesis Information',
                  style: TextStyle(
                    color: const Color(0xff363C3C),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 3.5.h,
                  height: 3.5.h,
                  child: SvgPicture.asset(
                    'assets/icon/providers/filter.svg',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const GFAccordion(
            title: 'History of Phrosthesis',
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
          const GFAccordion(
            title: 'Ambrosius Pare Book About Prosthesis',
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
          const GFAccordion(
            title: 'Modern Prosthesis',
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
          const GFAccordion(
            title: 'Prosthesis In Indonesia',
            content:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
        ],
      ),
    );
  }
}
