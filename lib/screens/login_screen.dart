import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'book_table.dart';

// Stateful widget for the Login screen.
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

// State class for the Login widget.
class _LoginState extends State<Login> {
  // Map to store user data (if needed in the future).
  Map userData = {};

  // Key to manage the form state.
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Title of the AppBar.
        title: Text('Login'),

        // Background color of the AppBar.
        backgroundColor: Colors.green,

        // Text color of the AppBar.
        foregroundColor: Colors.white,

        // Centers the title in the AppBar.
        centerTitle: true,
      ),

      // Allows scrolling for smaller screens.
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Logo section at the top.
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    // Rounded corners.
                    borderRadius: BorderRadius.circular(40),

                    // Border styling.
                    border: Border.all(color: Colors.blueGrey),
                  ),
                  child: Image.asset(
                    // Path to the logo image.
                    'assets/logo.jpg',
                    height: 30,
                    width: 20,
                  ),
                ),
              ),
            ),

            // Form section for user input.
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  // Associates the form with the key.
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Email input field.
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Enter email address'),
                            EmailValidator(
                              errorText: 'Please correct email filled',
                            ),
                          ]).call,
                          decoration: InputDecoration(
                            // Placeholder text.
                            hintText: 'Email',

                            // Label for the field.
                            labelText: 'Email',
                            prefixIcon: Icon(
                              // Email icon.
                              Icons.email,
                            ),

                            // Error message styling.
                            errorStyle: TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.all(
                                // Rounded border.
                                Radius.circular(9.0),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Password input field.
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(
                              errorText: 'Please enter Password',
                            ),
                            MinLengthValidator(
                              8,
                              errorText:
                                  'Password must be at least 8 characters',
                            ),
                            PatternValidator(
                              r'(?=.*?[#!@$%^&*-])',
                              errorText:
                                  'Psw must have at least one special character',
                            ),
                          ]).call,
                          decoration: InputDecoration(
                            // Placeholder text.
                            hintText: 'Password',

                            // Label for the field.
                            labelText: 'Password',
                            prefixIcon: Icon(
                              // Key icon for password.
                              Icons.key,
                              color: Colors.green,
                            ),

                            // Error message styling.
                            errorStyle: TextStyle(fontSize: 18.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),

                              // Rounded border.
                              borderRadius: BorderRadius.all(
                                Radius.circular(9.0),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Forget password text.
                      Padding(
                        padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                        child: Text('Forgot Password!'),
                      ),

                      // Login button.
                      Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // Login button does nothing for now
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Divider text for alternative sign-in options.
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            'SIGN UP!',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Floating Action Button to navigate to menu
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BookTable()),
          );
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}
