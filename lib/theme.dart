import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors

Color orangecolor = const Color(0xFFFFCE78);
Color lightbluecolor = const Color(0xFFADDCDF);
Color ltbluecolor = const Color(0xFFE4F1F2);
Color graycolor = const Color(0xFFDDDDDD);
Color blackcolor = const Color(0xFF363C3C);
Color whitecolor = const Color(0xFFFFFFFF);

// TextStyle

TextStyle orangetTextStyle = GoogleFonts.nunito(color: orangecolor);
TextStyle lightblueStyle = GoogleFonts.nunito(color: lightbluecolor);
TextStyle ltbluetTextStyle = GoogleFonts.nunito(color: ltbluecolor);
TextStyle blacktTextStyle = GoogleFonts.nunito(color: blackcolor);
TextStyle whitetTextStyle = GoogleFonts.nunito(color: whitecolor);

// FontWeight

FontWeight thin = FontWeight.w100;
FontWeight extralight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

//Responsive

double getWidth(double size) {
  return Get.width / 392.72727272727275 * size;
}

double getHeight(double size) {
  return Get.height / 850.9090909090909 * size;
}

String content1 =
    'Prostesis adalah alat yang dirancang untuk menggantikan anggota tubuh yang hilang, misalnya tangan atau kaki. Alat prostetik ini juga menjadi alternatif untuk operasi plastik atau rekonstruksi, contohnya operasi pengangkatan hidung. Seseorang mungkin membutuhkan alat prostetik karena terlahir tanpa anggota tubuh tertentu, akibat kecelakaan, atau usai menjalani amputasi. Amputasi sering kali menjadi pilihan saat pasien mengalami komplikasi diabetes, infeksi parah, atau kanker. Anggota tubuh yang biasanya diberikan prostesis yakni:\n'
    '  • lengan (mencakup atas atau bawah siku),\n'
    '  • kaki (mencakup atas atau bawah lutut),\n'
    '  • tangan,\n'
    '  • jari tangan atau kaki,\n'
    '  • hidung,'
    '  • telinga (juga alat bantu dengar),\n'
    '  • payudara,\n'
    '  • bola mata dan rongga mata, serta\n'
    '  • langit-langit mulut keras dan lunak.,\n';

String content2 =
    'Penggunaan prostesis bertujuan untuk menggantikan fungsi anggota tubuh yang hilang dengan sebaik mungkin. Alat ini berperan sebagai perpanjangan dari bagian tubuh yang tersisa untuk membantu menjalani aktivitas sehari-hari, seperti makan, bergerak tanpa kursi roda, dan berpakaian. Menurut Amputee Coalition, setiap prostesis dirancang sesuai tingkat amputasi, kemampuan fisik, dan kebutuhan pasien. Alat prostetik juga harus mendukung aktivitas pasien sehari-hari sehingga desainnya  disesuaikan. Secara umum, sebuah prostesis memiliki komponen berikut:\n'
    '  • Soket sebagai tempat masuknya pangkal kaki atau tangan (atau anggota tubuh lainnya).\n'
    '  • Suspensi yang menahan prostesis ke pangkal anggota tubuh.\n'
    '  • Poros prostesis.\n'
    '  • Bagian kaki, tangan, atau kait.\n'
    '  • Penutup untuk meningkatkan tampilan kosmetik.\n';

String artikelcontent =
    'Orang yang mengalami cedera kaki cukup parah yang mengganggu sistem gerak, butuh pakai tongkat atau kruk untuk membantunya tetap bergerak selama masa pemulihan. Namun sayangnya, otot di bagian kaki yang cedera tersebut bisa mengecil setelah lama tidak dipakai beraktivitas. Sebenarnya, apa penyebab otot mengecil setelah pakai alat bantu jalan? Apakah hal ini wajar?\n\n'
    'Selama masa penyembuhan cedera, kaki yang bermasalah belum cukup kuat untuk kembali berfungsi normal sehingga Anda akan bertumpu pada alat bantu jalan untuk memudahkan beraktivitas dan bergerak. Akibatnya, kaki yang cedera tersebut jadi jarang atau bahkan tidak sama sekali digerakkan.\n\n'
    'Ketika otot tidak digunakan dalam kurun waktu cukup lama, jaringan otot akan perlahan melemah dan massa otot menyusut. Kondisi ini disebut atrofi otot. Penyusutan massa otot diperkirakan bisa mencapai hingga dua persen setiap harinya selama menggunakan alat bantu jalan.\n\n'
    'Penggunaan alat bantu jalan juga berisiko mengakibatkan aliran darah ke kaki berkurang sehingga menghambat proses penyembuhan dan mempersulit masa transisi jika ingin berhenti menggunakan alat bantu.\n\n'
    'Selain itu, penyusutan massa otot bisa disebabkan oleh adanya suatu penyakit, seperti stroke (yang mungkin juga membuat Anda butuh pakai alat bantu jalan setelah pulih), atau setelah pemulihan operasi besar yang mengharuskan Anda bed rest total selama beberapa waktu.\n\n'
    'Meski alat bantu jalan bisa jadi penyebab otot mengecil, bukan berarti Anda jadi tidak memakainya sama sekali. Apalagi jika memang dokter menyarankan hal ini akibat kondisi kesehatan Anda saat itu.\n\n'
    'Cedera memang bikin Anda tidak nyaman untuk bergerak. Namun jika Anda hanya pasrah saja, maka otot di kaki yang cedera akan berangsur-angsur akan rusak karena tidak lagi memiliki kemampuan untuk berkembang dan bekerja secara normal.\n\n'
    'Pada akhirnya, tungkai kaki tersebut akan semakin lemah dan sulit digerakkan bahkan setelah Anda sembuh total dan lepas dari alat bantu jalan.\n\n'
    'Untuk mencegah “efek samping” ini, Anda harus tetap aktif menggerakkan otot kaki yang cedera setiap hari. Misalnya dengan melakukan peregangan sederhana atau melatih kekuatannya dengan melibatkannya bergerak perlahan setiap kali Anda berjalan.\n\n'
    'Intinya, jangan memanjakan kaki yang cedera berlebihan. Anda harus melatihnya dengan rutin, meskipun memang akan menimbulkan sedikit rasa sakit dan tidak nyaman.';
