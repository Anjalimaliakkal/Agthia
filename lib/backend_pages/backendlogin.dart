import 'package:agthia/backend_pages/backend_homepages.dart';
import 'package:agthia/backend_pages/backend_signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_service.dart';
//import 'home_pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  bool _loading = false;
  String _errorMessage = '';

  void _login() async {
    setState(() {
      _loading = true;
      _errorMessage = '';
    });

    String? error = await _authService.login(_emailController.text, _passwordController.text);
    if (error == null) {
      String? role = await _authService.getUserRole();
      if (role != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => getHomePage(role)),
        );
      }
    } else {
      setState(() {
        _errorMessage = error;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            if (_errorMessage.isNotEmpty) Text(_errorMessage, style: TextStyle(color: Colors.red)),
            ElevatedButton(
              onPressed: _loading ? null : _login,
              child: _loading ? CircularProgressIndicator() : Text('Login'),
            ),
            TextButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpPage())),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
