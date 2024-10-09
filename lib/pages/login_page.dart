import 'package:app/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:app/components/my_button.dart';
import 'package:app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sing user in mthod
  void singUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              //logo
              const Icon(
                Icons.lock,
                color: Colors.white,
                size: 100,
              ),

              const SizedBox(height: 25),

              //welcomeback text
              const Text(
                'Bobsilon',
                style: TextStyle(
                  color: Color.fromARGB(255, 223, 223, 223),
                  fontSize: 30,
                ),
              ),

              const SizedBox(height: 25),

              //username text
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //password text
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password?
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in
              MyButton(
                onTap: singUserIn,
              ),

              const SizedBox(height: 25),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 199, 199, 199),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //google + apple sign in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  const SizedBox(
                    width: 25,
                  ),

                  //apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              const SizedBox(height: 25),

              //register
              //not a member text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  //register text

                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
