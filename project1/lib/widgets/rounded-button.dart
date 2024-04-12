import 'package:flutter/material.dart';
import 'package:project1/ipaddress.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/login1.dart';
import 'package:project1/utilities/constants.dart';
import 'package:http/http.dart' as http;

class RoundedButton extends StatefulWidget {
  const RoundedButton({
    super.key,
    required this.buttonName,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
  });

  final String buttonName;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
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
          final email = widget.emailController.text;
          final password = widget.passwordController.text;
          final username = widget.usernameController.text;

          if (widget.buttonName == "Register") {
            await signUp(
              email: email,
              password: password,
              username: username,
            );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => loginpagee()),
            );
          } else if (widget.buttonName == "Login") {
            await logIn(
              email: email,
              password: password,
              context: context,
            );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          } else if (widget.buttonName == "Send") {}
        },
        child: Text(
          widget.buttonName,
          style: TextStyle(
            color: Color(0xA5FFFFFF),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ), //kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: kourcolor1,
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

  Future<void> logIn({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    // final userData = Provider.of<UserData>(context, listen: false);
    // userData.setRegisterID(email);
    print("email");
    print(email);

    print("password");
    print(password);

    final ipAddress = await getLocalIPv4Address();
    // print("*ipAddress:" + ipAddress);
    final url = Uri.parse('http://$ipAddress:5000/login');
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        if (email == "zeina.fawziad@gmail.com" && password == "1234") {
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => homepage(), //admin
          //   ),
          // );
          print("admin");
        } else {
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => homepage(
          //         //normal user
          //         ),
          //   ),
          // );
          print("normal user");
        }
        print('Login successful');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainScreen()),
        );
      } else if (response.statusCode == 401) {
        // Incorrect password
        print('Incorrect password');
        setState(() {
          var errorMessage = 'Your password is incorrect.';
        });
      } else if (response.statusCode == 404) {
        // User not found
        print('User not found');
        setState(() {
          var errorMessage =
              'This account doesn\'t exist. Please Sign up first.';
        });
      } else {
        print('HTTP error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
