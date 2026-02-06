import 'package:cafe_app/screens/user_signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../styles/app_spacing.dart';
import '../styles/app_sizes.dart';
import '../styles/app_text_styles.dart';
import '../styles/app_decorations.dart';
import '../services/theme_service.dart';
import 'book_table.dart';
import 'user_screen.dart';

bool _obscurePassword = true;

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
    final themeService = ThemeService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              themeService.isDarkMode() ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              themeService.toggleTheme();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Logo section at the top.
            Padding(
              padding: EdgeInsets.only(top: AppSpacing.lg),
              child: Center(
                child: Container(
                  width: AppSizes.logoSize,
                  height: AppSizes.logoSize,
                  decoration: AppDecorations.logoBox,
                  child: Image.asset(
                    'lib/assets/logo.jpg',
                    height: AppSizes.logoImageHeight,
                    width: AppSizes.logoImageWidth,
                  ),
                ),
              ),
            ),

            // Form section for user input.
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: Padding(
                padding: EdgeInsets.all(AppSpacing.sm),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Email input field.
                      Padding(
                        padding: EdgeInsets.all(AppSpacing.sm),
                        child: TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Enter email address'),
                            EmailValidator(
                              errorText: 'Please correct email filled',
                            ),
                          ]).call,
                          decoration: AppDecorations.emailInput,
                        ),
                      ),

                      // Password input field.
                      Padding(
                        padding: EdgeInsets.all(AppSpacing.sm),
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
                          obscureText: _obscurePassword,
                          decoration: AppDecorations.passwordInput.copyWith(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          ),
                        ),
                      ),

                      // Forget password text.
                      Padding(
                        padding: EdgeInsets.fromLTRB(AppSpacing.xl, 0, 0, 0),
                        child: Text(
                          'Forgot Password!',
                          style: AppTextStyles.bodySmall,
                        ),
                      ),

                      // Login button.
                      Padding(
                        padding: EdgeInsets.all(AppSpacing.lg),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: AppSizes.buttonHeight,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState?.validate() ?? false) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const UserScreen(),
                                  ),
                                );
                              }
                            },
                            child: const Text('Login', style: AppTextStyles.h3),
                          ),
                        ),
                      ),

                      // Sign up text.
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: AppSpacing.xl),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const UserSignupScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'SIGN UP!',
                              style: AppTextStyles.signUpText,
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const book_Table()),
          );
        },
        child: const Icon(Icons.menu),
      ),
    );
  }
}
