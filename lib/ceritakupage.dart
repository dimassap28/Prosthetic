import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/dashboard.dart';
import 'package:prosthesis/login.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const CeritakuPage(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.H().format(now);

class CeritakuPage extends StatelessWidget {
  const CeritakuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: const EdgeInsetsDirectional.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
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
                    'Ceritaku',
                    style: TextStyle(
                      fontSize: getWidth(20),
                      fontWeight: bold,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(() => const Login());
                    },
                    child: Icon(
                      Icons.person_rounded,
                      color: orangecolor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icon/dashboard/profile1.png",
                    height: getHeight(40),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  Text(
                    'Nama kamu',
                    style: TextStyle(fontSize: getWidth(15), fontWeight: bold),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                  Container(
                    height: getHeight(5),
                    width: getWidth(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: blackcolor.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                  Text(formatter + ' jam lalu',
                      style: TextStyle(
                        fontSize: getWidth(15),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: getHeight(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ini Judul',
                      style:
                          TextStyle(fontSize: getWidth(18), fontWeight: bold),
                    ),
                    SizedBox(
                      height: getHeight(3),
                    ),
                    const Text(
                      'Hari ini aku merasa sehat dan alhamdulillah aku masih bisa bersyukur. bisa menikmati hari esok untuk kesekian kalinya setelah aku diberi anugerah untuk menerima ke istimewaan dari tuhan berupa kaki sambung (prosthesis). semoga kita selalu menerima apa yang tuhan berikan dan tidak pernah mengeluh akan apa yang tuhan berikan',
                    ),
                  ],
                ),
              ),
              Divider(
                height: getHeight(8),
                thickness: 1,
              ),
              SizedBox(
                height: getHeight(22),
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icon/dashboard/profile1.png",
                    height: getHeight(40),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  Text(
                    'Nama kamu',
                    style: TextStyle(fontSize: getWidth(15), fontWeight: bold),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                  Container(
                    height: getHeight(5),
                    width: getWidth(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: blackcolor.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                  Text(formatter + ' jam lalu',
                      style: TextStyle(
                        fontSize: getWidth(15),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: getHeight(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ini Judul',
                      style:
                          TextStyle(fontSize: getWidth(18), fontWeight: bold),
                    ),
                    SizedBox(
                      height: getHeight(3),
                    ),
                    const Text(
                      'Hari ini aku merasa sehat dan alhamdulillah aku masih bisa bersyukur. bisa menikmati hari esok untuk kesekian kalinya setelah aku diberi anugerah untuk menerima ke istimewaan dari tuhan berupa kaki sambung (prosthesis). semoga kita selalu menerima apa yang tuhan berikan dan tidak pernah mengeluh akan apa yang tuhan berikan',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
