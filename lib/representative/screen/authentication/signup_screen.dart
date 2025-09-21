import 'package:flutter/material.dart';
import 'package:tailor_project/representative/screen/authentication/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameC = TextEditingController();
  final _passwordC = TextEditingController();
  final _confirmC  = TextEditingController();

  bool _obscure1 = true;
  bool _obscure2 = true;
  bool _loading  = false;

  // ignore: constant_identifier_names
  static const Color Bg = Color(0xff006171);   // teal utama
  static const Color kAccent = Color(0xff5FABB2);

  @override
  void dispose() {
    _usernameC.dispose();
    _passwordC.dispose();
    _confirmC.dispose();
    super.dispose();
  }

  Future<void> _onSignup() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);

    // TODO: ganti dengan sign up beneran (API/Firestore/dll)
    await Future.delayed(const Duration(milliseconds: 900));

    if (!mounted) return;
    setState(() => _loading = false);

    // TODO: arahkan ke halaman setelah sukses daftar
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
  }

  InputDecoration _inputDeco({
    required String hint,
    required IconData prefix,
    Widget? suffix,
  }) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(prefix),
      suffixIcon: suffix,
      filled: true,
      fillColor: const Color(0xffFAFDEF),
      errorStyle: const TextStyle(color: Colors.white),
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ===== HEADER / LOGO =====
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          child: Image.asset(
                            // ganti sesuai asetmu; pakai sama seperti login agar konsisten
                            'assets/images/splash-screen.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.95),
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                            letterSpacing: 2,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(width: 120, height: 2.4, color: Colors.white),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  // ===== FORM =====
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // USERNAME
                        TextFormField(
                          controller: _usernameC,
                          style: const TextStyle(color: Colors.black87),
                          decoration: _inputDeco(
                            hint: 'Name/Username',
                            prefix: Icons.person_outline,                            
                          ),
                          
                          validator: (v) =>
                              (v == null || v.trim().isEmpty) ? 'Wajib diisi' : null,
                        ),
                        const SizedBox(height: 12),

                        // PASSWORD
                        TextFormField(
                          controller: _passwordC,
                          obscureText: _obscure1,
                          style: const TextStyle(color: Colors.black87),
                          decoration: _inputDeco(
                            hint: 'Password',
                            prefix: Icons.lock_outline,
                            suffix: IconButton(
                              onPressed: () => setState(() => _obscure1 = !_obscure1),
                              icon: Icon(_obscure1 ? Icons.visibility_off : Icons.visibility),
                            ),
                          ),
                          validator: (v) =>
                              (v == null || v.length < 6) ? 'Min. 6 karakter' : null,
                        ),
                        const SizedBox(height: 12),

                        // CONFIRM PASSWORD
                        TextFormField(
                          controller: _confirmC,
                          obscureText: _obscure2,
                          style: const TextStyle(color: Colors.black87),
                          decoration: _inputDeco(
                            hint: 'Confirm Password',
                            prefix: Icons.lock_reset_rounded,
                            suffix: IconButton(
                              onPressed: () => setState(() => _obscure2 = !_obscure2),
                              icon: Icon(_obscure2 ? Icons.visibility_off : Icons.visibility),
                            ),
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) return 'Wajib diisi';
                            if (v != _passwordC.text) return 'Password tidak sama';
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ===== BUTTON (sesuai gambar: "SIGN IN") =====
                  SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: _loading ? null : _onSignup,
                      child: _loading
                          ? const SizedBox(
                              width: 22, height: 22,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Text(
                              'SIGN IN', // mengikuti teks pada contoh gambar kamu
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.6,
                              ),
                            ),
                    ),
                  ),

                  const SizedBox(height: 90),

                  // ===== FOOTER: Sudah Punya Akun? LOGIN =====
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Sudah Punya Akun ? ',
                        style: TextStyle(color: Colors.white70),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.lightBlue[200],
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        ),
                        onPressed: () {
                          // ke halaman login
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => const LoginScreen()),
                          );
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
