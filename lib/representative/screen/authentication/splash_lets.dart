import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/authentication/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff006171),
      body: SafeArea(
        child: Stack(
          children: [
            // Gambar utama
            Positioned.fill(
              bottom: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: IgnorePointer(
                  child: Image.asset(
                    'assets/images/splash_lets.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            // Tombol LET'S GO diatur posisi lebih ke atas
            Positioned(
              bottom: 60, // Semakin besar angkanya, semakin naik
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5FABB2),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "LET'S GO",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
