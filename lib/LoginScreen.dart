import 'package:flutter/material.dart'; // ignore_for_file: file_names
import 'CanteenScreen.dart';
import 'AuthService.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() =>
      _LoginScreenState(); // ignore: library_private_types_in_public_api
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;
  final TextEditingController eidController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 208, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(183, 6, 52, 90),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Image.asset(
                'images/Bike.png',
                height: 40.0,
                width: 200.0,
              ),
              const SizedBox(height: 30.0),
              const Text(
                'HUMAN RESOURCE INFORMATION SYSTEM',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(183, 6, 52, 90),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50.0),
              const Text(
                'LOGIN INTO YOUR ACCOUNT',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(183, 6, 52, 90),
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: eidController,
                decoration: const InputDecoration(labelText: 'Employee Id'),
              ),
              const SizedBox(height: 5.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured
                          ? Icons.visibility_off
                          : Icons.visibility_rounded,
                    ),
                    onPressed: _togglePasswordVisibility,
                  ),
                ),
                obscureText: _isObscured,
              ),
              const SizedBox(height: 5.0),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 4, 52, 100),
                ),
                child: const Text('SUBMIT'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final AuthService authService = AuthService();

  Future<void> _login() async {
    final String eid = eidController.text;
    final String password = passwordController.text;
    try {
      final String token = await authService.authenticate(eid, password);
      if (token.isNotEmpty) {
        Navigator.of(context).push(
          // ignore: use_build_context_synchronously
          MaterialPageRoute(
            builder: (context) => CanteenScreen(),
          ),
        );
      } else {
        // Show an error message if authentication fails
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password or Employee Id is incorrect'),
          ),
        );
      }
    } catch (e) {
      // Handle other errors here, e.g., network issues
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('An error occurred: $e'),
        ),
      );
    }
  }
}
