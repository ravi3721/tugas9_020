import 'package:tugas9_020/auth/auth_page.dart';
import 'package:tugas9_020/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // mengecek not nul user/login atau tidak
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        // snapshot memberi informasi user
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            // awal return ke LoginPage, AuthPage saat ingin buat register page
            return AuthPage();
          }
        },
      ),
    );
  }
}
