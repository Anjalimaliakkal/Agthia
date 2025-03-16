// import 'package:flutter/material.dart';

// class Adminchangepassword extends StatefulWidget {
//   const Adminchangepassword({super.key});

//   @override
//   State<Adminchangepassword> createState() => _AdminchangepasswordState();
// }

// class _AdminchangepasswordState extends State<Adminchangepassword> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Adminchangepassword extends StatefulWidget {
  @override
  _AdminchangepasswordState createState() => _AdminchangepasswordState();
}

class _AdminchangepasswordState extends State<Adminchangepassword> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;
  String? _errorMessage;

  // Function to change the password
  Future<void> _changePassword() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      User? user = _auth.currentUser;
      if (user == null) throw FirebaseAuthException(code: 'user-not-found', message: 'No user is logged in.');

      // Re-authenticate the user
      AuthCredential credential = EmailAuthProvider.credential(
        email: user.email!,
        password: _currentPasswordController.text.trim(),
      );
      await user.reauthenticateWithCredential(credential);

      // Update password
      await user.updatePassword(_newPasswordController.text.trim());

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password updated successfully!"), backgroundColor: Colors.green),
      );

      _currentPasswordController.clear();
      _newPasswordController.clear();
      _confirmPasswordController.clear();
    } on FirebaseAuthException catch (e) {
      setState(() => _errorMessage = e.message);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Password")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _currentPasswordController,
                decoration: InputDecoration(labelText: "Current Password"),
                obscureText: true,
                validator: (value) => value!.isEmpty ? "Enter current password" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _newPasswordController,
                decoration: InputDecoration(labelText: "New Password"),
                obscureText: true,
                validator: (value) =>
                    value!.length < 6 ? "Password must be at least 6 characters" : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
                validator: (value) =>
                    value != _newPasswordController.text ? "Passwords do not match" : null,
              ),
              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(_errorMessage!, style: TextStyle(color: Colors.red)),
                ),
              SizedBox(height: 32),
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _changePassword,
                      child: Text("Change Password"),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}


