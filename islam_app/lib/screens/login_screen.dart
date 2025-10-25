import 'package:flutter/material.dart';
import 'package:islamic_app/screens/signup_screen.dart';
import 'package:islamic_app/auth_service.dart';
import 'package:islamic_app/widgets/google_sign_in_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60),
              const Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A44E1),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Login to your account',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  await authService.signInWithEmailAndPassword(
                    _emailController.text,
                    _passwordController.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
               child: const Text(
  'Login',
  style: TextStyle(
    color: Colors.white, // deep black text color
    fontWeight: FontWeight.bold, // optional (for better visibility)
  ),
),

              ),
              const SizedBox(height: 20),
              const GoogleSignInButton(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Color(0xFF4A44E1)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
