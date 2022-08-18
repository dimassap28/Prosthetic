import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
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
                      Get.back();
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
                  Icon(
                    Icons.person_rounded,
                    color: orangecolor,
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  Text(
                    'Laki-laki, 46 tahun, Surabaya',
                    style: TextStyle(fontSize: getWidth(15), fontWeight: bold),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: getHeight(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getHeight(3),
                    ),
                    const Text(
                      'Saya mengalami patah tulang kaki kanan pada tahun 2020 karena kecelakaan sepeda motor. Saya mendapatkan kaki palsu dengan bantuan aplikasi ProsteticGo yang direkomendasikan oleh saudara saya. Aplikasi ini sangat membantu saya dari proses pengenalan mengenai kaki palsu, dimana saya bisa membelinya, dan bagaimana membiasakan diri saya sehingga sekarang saya sudah bisa berjalan seperti dulu lagi.',
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
                  Icon(
                    Icons.person_rounded,
                    color: orangecolor,
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  Text(
                    'Perempuan, 55 tahun, Malang',
                    style: TextStyle(fontSize: getWidth(15), fontWeight: bold),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                  SizedBox(
                    width: getWidth(8),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: getHeight(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: getHeight(3),
                    ),
                    const Text(
                      'Pada tahun 2019 saya mengalami patah tulang kaki kiri karena terjatuh dari tangga. Setelah itu saya sempat putus asa karena kaki saya tidak bisa kembali seperti sedia kala. Lalu ada teman yang memberitahu mengenai aplikasi ProsteticGo. Berkat aplikasi ini saya bisa tahu mengenai kaki palsu, dimana saya bisa pesan dan bagaimana prosesnya dari awal hingga akhir. Sekarang sudah 2 tahun saya menggunakan kaki palsu dan saya sangat senang karena sudah dapat beraktivitas seperti biasanya lagi.',
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
