import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // untuk mengetahui user yang sedang login
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // untuk mengetahui user yang sedang login
            Text('Signed In as ' + user.email!),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.amber[900],
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
