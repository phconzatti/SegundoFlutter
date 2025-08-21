import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/login_page.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(title: 'Welcome',),
            FittedBox(
              child: Text(
                "Flutter Mapp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  letterSpacing: 50,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FilledButton(onPressed: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            }, 
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
            ),
            child: Text('Get Started')),
            TextButton(onPressed: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
              );
            }, 
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 40),
            ),
            child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
