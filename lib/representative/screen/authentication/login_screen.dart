import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/authentication/signup_screen.dart';
import 'package:tailor_project/representative/widget/app_text_field.dart';
import 'package:tailor_project/utils/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameC = TextEditingController();
  final _passwordC = TextEditingController();
  bool _loading = false;

  @override
  void dispose() {
    _usernameC.dispose();
    _passwordC.dispose();
    super.dispose();
  }

  Future<void> _onLogin() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);

    // TODO: ganti dengan auth beneran
    await Future.delayed(const Duration(milliseconds: 900));

    setState(() => _loading = false);
    // Navigator.pushReplacement(...); // arahkan ke Home setelah login sukses
  }

  void _onGoogle() {
    // TODO: sambungkan ke Google Sign-In
  }

  @override
  Widget build(BuildContext context) {
    const bg = Color(0xff006171); // teal utama (sesuai proyekmu)
    const accent = Color(0xff5FABB2);

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // HERO / ILUSTRASI
                  Container(
                    margin: const EdgeInsets.only(bottom: 8, top: 16),
                    child: Column(
                      children: [
                        // Ganti asset sesuai punyamu
                        SizedBox(
                          height: 180,
                          child: Assets.images.SplashScreen
                              .image(fit: BoxFit.contain),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                        const SizedBox(
                            height: 4), // Jarak antara teks dan garis
                        Container(
                          width: 100,
                          height: 2.4,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // FORM
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // USERNAME
                        AppTextField(
                          controller: _usernameC,
                          hint: 'Name/Username',
                          prefixIcon: Icons.person_outline,
                          validator: (v) => (v == null || v.trim().isEmpty)
                              ? 'Wajib diisi'
                              : null,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(height: 12),

                        // PASSWORD
                        AppTextField(
                          controller: _passwordC,
                          hint: 'Password',
                          prefixIcon: Icons.lock_outline,
                          isPassword: true,
                          validator: (v) => (v == null || v.length < 6)
                              ? 'Min. 6 karakter'
                              : null,
                          textInputAction: TextInputAction.done,
                          onSubmitted: (_) =>
                              _onLogin(), // enter langsung login (opsional)
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // BUTTON LOGIN
                  SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: accent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: _loading ? null : _onLogin,
                      child: _loading
                          ? const SizedBox(
                              width: 22,
                              height: 22,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.6,
                              ),
                            ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // DIVIDER "ATAU"
                  Row(
                    children: [
                      Expanded(
                        child: Container(height: 1, color: Colors.white24),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'ATAU',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(height: 1, color: Colors.white24),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // GOOGLE SIGN-IN
                  SizedBox(
                    height: 44,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        side: const BorderSide(color: Colors.transparent),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: _onGoogle,
                      icon:
                          Assets.images.googleLogo.image(width: 22, height: 22),
                      label: const Text(
                        'Lanjut dengan Google',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 70),

                  // FOOTER SIGN-UP
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Belum Punya Akun ? ',
                        style: TextStyle(color: Colors.white70),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.lightBlue[200],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 4),
                        ),
                        onPressed: () {
                          // ke halaman login
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignupScreen()),
                          );
                        },
                        child: const Text(
                          'SIGN',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
