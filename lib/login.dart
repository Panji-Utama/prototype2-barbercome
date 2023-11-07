import 'package:flutter/material.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 47, 153, 139),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Login Page",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 140,
            ),
            Container(
              width: 300,
              decoration: const BoxDecoration(
                color: Color(0xFF29998B), // Teal background color
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.white38,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white, // White icon color
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          Colors.white38, // White border color when unfocused
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // White border color when focused
                    ),
                  ),
                  // Set the text color here:
                ),
                style: const TextStyle(
                  color: Colors.white, // Change text color to black
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white38,
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.white, // White icon color
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          Colors.white38, // White border color when unfocused
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // White border color when focused
                    ),
                  ),
                  // Set the text color here:
                ),
                style: const TextStyle(
                  color: Colors.white, // Change text color to black
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FancyButton(
                button_text: "Login",
                button_height: 30,
                button_width: 100,
                button_radius: 10,
                button_color: Color.fromARGB(255, 30, 111, 102),
                button_outline_color: Color.fromARGB(255, 25, 95, 86),
                button_text_color: Colors.white,
                button_icon_color: Colors.white,
                icon_size: 22,
                button_text_size: 15,
                onClick: () {
                  print("Button clicked");
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Register(); 
                    }));
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
