import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'Teknologi.dart';

void main() {
  runApp(MaterialApp(
    home: Berita(),
    routes: {
      '/Berita': (context) => Berita(),
    },
  ));
}

class Berita extends StatelessWidget {
  const Berita({super.key});

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
        title: Text("Berita"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/prabowogibran.jpg'),
          Text(
            "Pasangan Prabowo Subianto-Gibran Rakabuming Raka mendeklarasikan diri maju di Pilpres 2024 dan mendaftar ke Komisi Pemilihan Umum (KPU) sebagai bakal capres-cawapres pada Rabu (25/10).",
          ),
          Text(
              "Di tengah prosesi itu, analis politik mengatakan pemilihan Gibran Rakabuming Raka sebagai pendamping Prabowo dalam bursa Pilpres 2024 bagaikan “buah simalakama” dalam mendulang suara pemilih"),
          Text(
              "Di satu sisi, keberadaan Gibran akan mendongkrak elektabilitas Prabowo dengan “efek Jokowi”, tapi efek ini bisa berbalik menjadi “momok negatif” terutama di kalangan pemilih muda."),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Teknologi()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
            ),
            child: const Text('Lihat Teknologi'),
          ),
        ],
      )),
    );
  }
}
