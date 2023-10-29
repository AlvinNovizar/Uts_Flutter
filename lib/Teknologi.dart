import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Teknologi(),
    routes: {
      '/Teknologi': (context) => Teknologi(),
    },
  ));
}

class Teknologi extends StatelessWidget {
  const Teknologi({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        title: Text("Teknologi"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/iphone15.jpg'),
          Text(
              "tahun ini, Apple telah membuat beberapa perubahan besar, antara lain seperti mengganti port Lightning dengan USB-C. Selain itu, Dynamic Island kini tersedia di semua model iPhone 15, bukan hanya model Pro. "),
          Text(
              "Saat Anda menggunakan petunjuk arah belokan demi belokan Apple Maps, Dynamic Island bisa menjadi lebih besar untuk menunjukkan arah selanjutnya yang harus diambil. Selanjutnya, Dynamic Island juga dapat menampilan panggilan masuk, durasi panggilan, pengatur waktu aktif, dan banyak lagi. Ini juga sangat berguna untuk menampilkan peringatan pemberitahuan seperti konfirmasi Apple Pay, Pembukaan kunci FaceID, peringatan baterai lemah, status koneksi dan baterai  AirPods, perekamanan layar, dan banyak lagi. Jika Anda mengikuti olahraga, Dynamic Island juga bagus untuk menampilkan skor olahraga terkini melalui aplikasi Apple TV. "),
          Text(
              "Berikutnya, Dynamic Island paling berguna untuk aplikasi milik Apple. Meskipun ada dukungan bagi pengembang pihak ketiga untuk memanfaatkan Dynamic Island, belum banyak aplikasi yang menggunakannya, setidaknya dalam skema besar. Tetapi bukan berarti mereka tidak ada"),
        ],
      )),
    );
  }
}
