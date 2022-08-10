import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:prosthesis/article.dart';
import 'package:prosthesis/theme.dart';

void main() {
  runApp(
    const ReadArticle(),
  );
}

final now = DateTime.now();
String formatter = DateFormat.yMMMMd().format(now);

class ReadArticle extends StatelessWidget {
  const ReadArticle({Key? key}) : super(key: key);

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
                      Get.to(() => const Article());
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
                    'Apa itu Prosthesis: Gambaran Umum, Manfaat, dan Hasil yang Diharapkan',
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
                  'Apa itu Prosthesis?\n\n'
                  'Prosthesis merupakan sebuah alat kesehatan yang didesain untuk menggantikan bagian tubuh tertentu untuk membantu pasien mendapatkan kembali fungsi tertentu setelah bagian tubuhnya cidera berat karena kecelakaan atau terkena penyakit.\n\n'
                  'Sebagai ketentuan medis, penyedia layanan kesehatan dilatih untuk mampu mempertahankan bagian tubuh sebisa mungkin. Namun, terdapat beberapa kasus dimana kerusakan dapat mengarah pada komplikasi yang lebih parah seperti kematian, sehingga proses mengangkat bagian tubuh tersebut menjadi pilihan yang lebih baik. Saat organ tubuh, seperti kandung kemih atau usus buntu dapat diangkat tanpa mempengaruhi kualitas hidup seseorang, maka tidak sama halnya dengan bagian tubuh lainnya jika dihilangkan, seperti kaki, tulang, mata, dan tangan. Untuk memastikan bagian tubuh tersebut masih dalam kondisi yang dapat bekerja, maka digunakanlah prosthesis.\n\n'
                  'Prosthesis terdiri dari berbagai ukuran, bentuk, dan fungsi. Beberapa prosthesis berfungsi menunjang kecantikan. Hal ini termasuk silikon yang dimasukkan ke dalam payudara atau tangan. Silikon tersebut dapat memperbaiki bentuk, tetapi tidak dapat membuat bagian tubuh tersebut menjadi berfungsi seperti semula.\n\n'
                  'Kebanyakan prosthesis digunakan untuk mengembalikan fungsi bagian tubuh yang telah dihilangkan. Prosthesis yang sangat populer digunakan adalah pada bagian tangan dan kaki. Prosethesis untuk tangan dapat terdiri dari prosthesis tangan dan lengan bagian bawah, atau lengan bagian atas, yang direkomendasikan saat sendi pada siku juga hilang atau harus diangkat.\n\n'
                  'Sebuah prosthesis disebut transtibial saat ia menggantikan bagian tubuh di bawah lutut seperti pada bagian kaki. Namun, jika termasuk bagian lutut dan menghubungkannya ke paha, maka disebut dengan prosthesis transfemoral.\n\n'
                  'Prosthesis dapat bersifat dapat dipindahkan atau permanen. Prosthesis yang dipasang di bagian dalam tubuh seperti pinggul palsu biasanya bersifat permanen. Sementara sebagian besar prosthesis terdiri dari bagian rongga, poros, dan komponen – komponen untuk meniru melekatnya bagian tibuh ke persendian, beberapa prosthesis menggunakan kabel untuk melekatkan prosthesis ke tubuh.\n\n'
                  'Selama bertahun tahun, telah terdapat perkembangan dan penelitian yang signifikan untuk meningkatkan desain prosthesis. Beberapa pasien bahkan telah menggunakan lengan robotik dengan elektroda yang terhubung ke saraf tertentu pada otak untuk mendapatkan kendali yang lebih alami.',
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
