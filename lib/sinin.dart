import 'package:flutter/material.dart';
import 'package:testoday/home.dart';
import 'package:testoday/sinup.dart';

class Sinin extends StatefulWidget {
  const Sinin({super.key});

  @override
  _SininState createState() => _SininState();
}

class _SininState extends State<Sinin> {
  final _formKey = GlobalKey<FormState>();
  String? _phoneOrEmail;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Create Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 32),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone Or Gmail',
                    suffixIcon: Icon(Icons.check),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone or email';
                    }
                    // Regex for email validation (basic)
                    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
                    if (!emailRegex.hasMatch(value) &&
                        !RegExp(r'^\d+$').hasMatch(value)) {
                      return 'Enter a valid email or phone number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _phoneOrEmail = value;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value;
                  },
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Proceed with your sign-in logic
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => GymHomePage()),
                      );
                    }
                  },
                  child: const Text(
                    'SIGN In',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 140, 39, 39),
                    fixedSize: const Size(300, 50),
                  ),
                ),
                const SizedBox(height: 179),
                BottomAppBar(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: const Text("Don't Have an account? Sign Up"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
