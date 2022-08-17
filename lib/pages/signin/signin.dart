import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/bloc/auth/auth_bloc.dart';
import 'package:gitsuz/pages/home/home.dart';
import 'package:gitsuz/pages/signin/recovery_password.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static Page<void> page() => const MaterialPage<void>(child: SignInPage());
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SignInPage());
  }

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F6F5),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Kirish',
            style: TextStyle(
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is Authenticated) {
              // Navigating to the dashboard screen if the user is authenticated
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
            }
            if (state is AuthError) {
              // Showing the error message if the user has entered invalid credentials
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is Loading) {
                // Showing the loading indicator while the user is signing in
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is UnAuthenticated) {
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/login.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.05, left: size.width * 0.05, bottom: size.height * 0.01, right: size.width * 0.05),
                              child: TextFormField(
                                enabled: true,
                                autocorrect: true,
                                controller: _emailController,
                                key: const Key('signInForm_emailOrPhoneInput_textField'),
                                decoration: InputDecoration(
                                  labelText: 'Email yoki Telefon',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.6),
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  return value != null && !EmailValidator.validate(value) ? 'Enter a valid email' : null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.02, left: size.width * 0.05, bottom: size.height * 0.05, right: size.width * 0.05),
                              child: TextFormField(
                                key: const Key('signInForm_passwordInput_textField'),
                                decoration: InputDecoration(
                                  labelText: 'Parol',
                                  suffixIcon: IconButton(icon: const Icon(Icons.visibility_off_outlined), onPressed: () {}),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.withOpacity(0.6),
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                controller: _passwordController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  return value != null && value.length < 6 ? "Enter min. 6 characters" : null;
                                },
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            Container(
                              height: size.height * 0.06,
                              width: size.width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color(0xff326A32))
                                ),
                                key: const Key('SignInForm_continue_raisedButton'),
                                onPressed: () {
                                  _authenticateWithEmailAndPassword(context);
                                },
                                child: Center(
                                  child: Text(
                                    'Kirish'.toUpperCase(),
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.06,
                              width: size.width * 0.9,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.transparent,
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                              ),
                              child: TextButton(
                                key: const Key('SignInForm_recovery_password_raisedButton'),
                                onPressed: () => Navigator.of(context).push<void>(RecoveryPasswordPage.route()),
                                child: Center(
                                  child: Text(
                                    'Parolni Tiklash'.toUpperCase(),
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff326A32),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }

  void _authenticateWithEmailAndPassword(context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignInRequested(_emailController.text, _passwordController.text),
      );
    }
  }
}
