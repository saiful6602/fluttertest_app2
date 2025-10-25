import 'package:flutter/material.dart';
import 'package:islamic_app/auth_service.dart';
import 'package:provider/provider.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return OutlinedButton.icon(
      icon: Image.asset('assets/images/google_logo.png', height: 24.0),
      label: const Text('Sign in with Google'),
      onPressed: () async {
        await authService.signInWithGoogle();
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 12),
        side: BorderSide(color: Colors.grey[300]!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
