import 'package:agthia/backend_pages/backendlogin.dart';
import 'package:flutter/material.dart';
import 'auth_service.dart';
//import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _selectedRole = 'user';
  final AuthService _authService = AuthService();
  bool _loading = false;
  String _errorMessage = '';

  void _signUp() async {
    setState(() {
      _loading = true;
      _errorMessage = '';
    });

    String? error = await _authService.signUp(_emailController.text, _passwordController.text, _selectedRole);
    if (error == null) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
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
      appBar: AppBar(title: Text('Sign Up')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            DropdownButton<String>(
              value: _selectedRole,
              items: ['admin', 'user', 'deliveryboy', 'restaurant']
                  .map((role) => DropdownMenuItem(value: role, child: Text(role)))
                  .toList(),
              onChanged: (value) => setState(() => _selectedRole = value!),
            ),
            if (_errorMessage.isNotEmpty) Text(_errorMessage, style: TextStyle(color: Colors.red)),
            ElevatedButton(
              onPressed: _loading ? null : _signUp,
              child: _loading ? CircularProgressIndicator() : Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}