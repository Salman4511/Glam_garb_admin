import 'package:flutter/material.dart';
import 'package:glam_garb_admin/Infrastructure/Services/auth/Auth_repo.dart';
import 'dart:async';

import 'package:glam_garb_admin/Presentation/Screens/authentication/view/login_page.dart';
import 'package:glam_garb_admin/Presentation/Screens/NavigationBar/view/nav_bar.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({
    super.key,
  });

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  int _start = 5;
  late Timer _timer;
  late final AuthRepo repo;

  @override
  void initState() {
    super.initState();
    repo = AuthRepo();
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      if (_start == 0) {
        timer.cancel();
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(builder: (context) => const LoginScreen()),
        // );
        bool isAuthenticated = await repo.isAuthenticated();

        // Navigate to the appropriate screen based on authentication status
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => isAuthenticated
                ? navPage() // Replace with your actual HomeScreen widget
                : const LoginScreen(),
          ),
        );
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Image.network(
                  'https://media.istockphoto.com/id/1401938094/vector/coat-hanger-vector-black-line-icon-isolated.jpg?s=612x612&w=0&k=20&c=R70h3OwF1TqFgnrUXilscmog_heD-vVDMtwqXKAbvFo=',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Glam Garb',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(55.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Color.fromARGB(255, 85, 85, 87)),
                  value: 1 - (_start / 5), // Adjusted value based on timer
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
