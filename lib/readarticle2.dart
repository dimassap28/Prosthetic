import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const ReadArticle2(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

class ReadArticle2 extends StatelessWidget {
  const ReadArticle2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getHeight(24), vertical: getWidth(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                ]),
                SizedBox(
                  height: getHeight(25),
                ),
                Text(
                    'Wajarkah Otot Mengecil Setelah Memakai Kaki Palsu (PROSTESIS)?',
                    style: TextStyle(
                      fontWeight: bold,
                      fontSize: getWidth(18),
                    )),
                SizedBox(
                  height: getHeight(10),
                ),
                Text(
                  formatter,
                  style: TextStyle(fontWeight: light),
                ),
                SizedBox(
                  height: getHeight(10),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/icon/artikel/p1.jpg',
                    height: getHeight(200),
                    width: getWidth(350),
                  ),
                ),
                SizedBox(
                  height: getHeight(10),
                ),
                Center(
                  child: Text(
                    'credit, www.com',
                    style: TextStyle(fontWeight: light),
                  ),
                ),
                SizedBox(
                  height: getHeight(10),
                ),
                const Text(
                  'Orang yang mengalami cedera kaki cukup parah yang mengganggu sistem gerak, butuh pakai tongkat atau kruk untuk membantunya tetap bergerak selama masa pemulihan. Namun sayangnya, otot di bagian kaki yang cedera tersebut bisa mengecil setelah lama tidak dipakai beraktivitas. Sebenarnya, apa penyebab otot mengecil setelah pakai alat bantu jalan? Apakah hal ini wajar?\n\n'
                  'Selama masa penyembuhan cedera, kaki yang bermasalah belum cukup kuat untuk kembali berfungsi normal sehingga Anda akan bertumpu pada alat bantu jalan untuk memudahkan beraktivitas dan bergerak. Akibatnya, kaki yang cedera tersebut jadi jarang atau bahkan tidak sama sekali digerakkan.\n\n'
                  'Ketika otot tidak digunakan dalam kurun waktu cukup lama, jaringan otot akan perlahan melemah dan massa otot menyusut. Kondisi ini disebut atrofi otot. Penyusutan massa otot diperkirakan bisa mencapai hingga dua persen setiap harinya selama menggunakan alat bantu jalan.\n\n'
                  'Penggunaan alat bantu jalan juga berisiko mengakibatkan aliran darah ke kaki berkurang sehingga menghambat proses penyembuhan dan mempersulit masa transisi jika ingin berhenti menggunakan alat bantu.\n\n'
                  'Selain itu, penyusutan massa otot bisa disebabkan oleh adanya suatu penyakit, seperti stroke (yang mungkin juga membuat Anda butuh pakai alat bantu jalan setelah pulih), atau setelah pemulihan operasi besar yang mengharuskan Anda bed rest total selama beberapa waktu.\n\n'
                  'Meski alat bantu jalan bisa jadi penyebab otot mengecil, bukan berarti Anda jadi tidak memakainya sama sekali. Apalagi jika memang dokter menyarankan hal ini akibat kondisi kesehatan Anda saat itu.\n\n'
                  'Cedera memang bikin Anda tidak nyaman untuk bergerak. Namun jika Anda hanya pasrah saja, maka otot di kaki yang cedera akan berangsur-angsur akan rusak karena tidak lagi memiliki kemampuan untuk berkembang dan bekerja secara normal.\n\n'
                  'Pada akhirnya, tungkai kaki tersebut akan semakin lemah dan sulit digerakkan bahkan setelah Anda sembuh total dan lepas dari alat bantu jalan.\n\n'
                  'Untuk mencegah “efek samping” ini, Anda harus tetap aktif menggerakkan otot kaki yang cedera setiap hari. Misalnya dengan melakukan peregangan sederhana atau melatih kekuatannya dengan melibatkannya bergerak perlahan setiap kali Anda berjalan.\n\n'
                  'Intinya, jangan memanjakan kaki yang cedera berlebihan. Anda harus melatihnya dengan rutin, meskipun memang akan menimbulkan sedikit rasa sakit dan tidak nyaman.\n',
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Sumber: Hellosehat 2021',
                  style: TextStyle(fontWeight: light),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
