import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alvin Novizar',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('image/onepiece.png'),
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  hintText: "Masukan Username"),
            ),
            SizedBox(height: 25),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 40,
                  ),
                  hintText: "Masukan Password"),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika otentikasi di sini
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Contoh validasi sederhana
                if (username == 'alvin' && password == '98765') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ),
                  );
                } else {
                  // Tampilkan pesan kesalahan
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Login Gagal'),
                        content: Text('Username atau password salah.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang!'),
      ),
      body: Center(
        child: Text('Anda berhasil masuk ke aplikasi.'),
      ),
    );
  }
}
