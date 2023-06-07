import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_project/app/common_widgets/sign_in_text.dart';
import 'package:time_tracker_flutter_project/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter_project/app/sign_in/sign_in_outlined_button.dart';
import 'package:time_tracker_flutter_project/app/sign_in/social_sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  final Function(User) OnSignIn;
  SignInPage({required this.OnSignIn});

  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      OnSignIn(authResult.user!);
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
        elevation: 4.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SignInText(
            text: "Sign In",
            fontSize: 32,
            textColor: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 48),
          SocialSignInButton(
            assetName: 'assets/images/google-logo.png',
            text: "Sign in With Google",
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          SocialSignInButton(
            assetName: 'assets/images/facebook-logo.png',
            text: "Sign in With Facebook",
            textColor: Colors.white,
            color: const Color(0xFF334D92),
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          SignInButton(
            text: "Sign in With Email",
            textColor: Colors.white,
            color: Colors.teal[700],
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          const Text(
            "or",
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          SignInOutlinedButton(
            text: "Sign in Anonymously",
            textColor: Colors.teal,
            fontSize: 15.0,
            borderWidth: 3.0,
            borderColor: Colors.teal,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
