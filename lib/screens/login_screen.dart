import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learning_app_flutter/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            // ✅ Apply uniform padding for the whole column
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Top Row (Back button + Title)
                Row(
                  children: [
                    BackButton(color: Colors.purple),
                    const Spacer(),
                    const Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),

                const SizedBox(height: 10),

                const Text(
                  'EduMate',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Enter your login details to access your account',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40),

                // Facebook and Google buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _socialButton(
                      color: const Color(0xFF03569A),
                      icon: FontAwesomeIcons.facebook,
                      text: 'Facebook',
                    ),
                    _socialButton(
                      color: Colors.red,
                      icon: FontAwesomeIcons.googlePlus,
                      text: 'Google',
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                // Email field
                _inputField(hint: 'Email'),

                const SizedBox(height: 20),

                // Password field
                _inputField(hint: 'Password'),

                const SizedBox(height: 20),

                Row(
                  children: const [
                    Icon(Icons.check_box_outline_blank, color: Colors.purple),
                    SizedBox(width: 5),
                    Text(
                      'Remember Me?',
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    );
                  },
                  child: _customButton(size: size, text: 'Log in with your account'),
                ),

                const Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Don\'t have an Account?',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔹 Reusable social login button
  Widget _socialButton({required Color color, required IconData icon, required String text}) {
    return Container(
      height: 45,
      width: 135,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Reusable input field
  Widget _inputField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.purple),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.purple),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.purple, width: 1.5),
        ),
      ),
    );
  }

  // 🔹 Custom main login button
  Widget _customButton({required Size size, required String text}) {
    return Container(
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
