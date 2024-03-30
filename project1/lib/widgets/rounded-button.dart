import 'package:flutter/material.dart';
import 'package:project1/ipaddress.dart';
import 'package:project1/utilities/constants.dart';
import 'package:http/http.dart' as http;

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.buttonName,
    required this.username,
    required this.email,
    required this.password,
  });

  final String buttonName;
  final String username;
  final String email;
  final String password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ElevatedButton(
        onPressed: () async {
          if (buttonName == "Register") {
            await signUp(
              email: email,
              password: password,
              username: username,
            );
          } else if (buttonName == "Login") {
          } else if (buttonName == "Send") {}
        },
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: kBlue,
        ),
      ),
    );
  }

  Future<void> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    final ipAddress = await getLocalIPv4Address();
    final url = Uri.parse('http://$ipAddress:5000/signup');

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'username': username,
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Data sent successfully
        print('Signup successful');
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => login()));
      } else {
        // Handle errors or server response based on status code
        // setState(() {
        //   var errorMessage =
        //       'This account doesn\'t exist. You can try logging in with your register ID';
        // });
        print('HTTP error: ${response.statusCode}');
      }
    } catch (error) {
      // Handle network or other errors
      print('Error: $error');
    }
  }
}
