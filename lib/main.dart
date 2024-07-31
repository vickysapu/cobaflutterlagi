import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Akademik",
    home: new Homepage(),
    routes: <String, WidgetBuilder>{
      '/TentangApk': (BuildContext context) => new TentangApk(),
      '/Homepage': (BuildContext context) => new Homepage(),
    },
  ));
}

class TentangApk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: new AppBar(
        backgroundColor: Color(0xFF3A57E8),
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 40.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Homepage');
          },
        ),
        title: new Text(
          "Tentang Aplikasi",
          style: new TextStyle(
              color: Colors.white,
              fontFamily: "Poopins",
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              bottom: 260.0), // Tambahkan margin top sesuai kebutuhan
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'asset/LogoApp.png',
                width: 280.0,
              ),
              SizedBox(
                height: 45.0,
              ),
              Center(
                child: Container(
                  width: 300.0,
                  child: new Text(
                    'Versi 1 (1.10) PT Universal Big Data (UBIG) suratkita@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF3B57E7),
                    ), // Sesuaikan style teks sesuai kebutuhan
                  ),
                ),
              ),
              SizedBox(
                height: 45.0,
              ),
              Center(
                child: Container(
                  width: 320.0,
                  child: new Text(
                    'Akademik App adalah aplikasi akademik yang mengelola data siswa dan data kota dengan visualisasi dashboard dengan menampilkan presentasi data dari data yang ada. Aplikasi ini sebagai standar seleksi TES MAGANG UBIG.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFF3B57E7),
                    ), // Sesuaikan style teks sesuai kebutuhan
                  ),
                ),
              ),
              SizedBox(
                  height:
                      20.0), // Tambahkan jarak antara gambar dan teks jika diperlukan
            ],
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        color: Color(0xFFDFDFDF),
        width: 500.0,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black, // Warna latar belakang container
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.5), // Warna bayangan dengan transparansi
              spreadRadius: 5, // Radius penyebaran bayangan
              blurRadius: 7, // Radius blur bayangan
              offset:
                  Offset(0, 3), // Geser bayangan secara horizontal dan vertikal
            ),
          ],
          borderRadius: BorderRadius.circular(
              10.0), // Optional: sudut membulat untuk container
        ),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
                child: Image.asset(
              'asset/LogoApp.png',
              width: 280.0,
            )),
          ],
        ),
      ),
    );
  }
}
