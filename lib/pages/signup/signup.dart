import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/bloc/auth/auth_bloc.dart';
import 'package:gitsuz/pages/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  static Page<void> page() => const MaterialPage<void>(child: SignUpPage());

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? dropdownValue = 'Yollovchi';
  List<String> dropdownItems = <String>['Gid', 'Tarjimon', 'Yollovchi'];

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
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Ro\'yxatdan o\'tish',
            style: TextStyle(
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is Authenticated) {
              // Navigating to the dashboard screen if the user is authenticated
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            }
            if (state is AuthError) {
              // Displaying the error message if the user is not authenticated
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            if (state is Loading) {
              // Displaying the loading indicator while the user is signing up
              return const Center(child: CircularProgressIndicator());
            }
            if (state is UnAuthenticated) {
              return Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.width * 0.07, left: size.width * 0.05, right: size.width * 0.05),
                        child: TextFormField(
                          enabled: true,
                          autocorrect: true,
                          key: const Key('SignUpForm_nameInput_textField'),
                          decoration: InputDecoration(
                            labelText: 'Ism',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.6),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
                        child: TextFormField(
                          enabled: true,
                          autocorrect: true,
                          key: const Key('SignUpForm_lastnameInput_textField'),
                          decoration: InputDecoration(
                            labelText: 'Familiya',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.6),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
                        child: DropdownButtonFormField<String>(
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Kim kerak'),
                          ),
                          borderRadius: BorderRadius.circular(5),
                          value: dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          isExpanded: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
                        child: TextFormField(
                          enabled: true,
                          autocorrect: true,
                          key: const Key('SignUpForm_emailInput_textField'),
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
                          controller: _emailController,
                          validator: (value) {
                            return value != null && !EmailValidator.validate(value) ? 'Enter a valid email' : null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
                        child: TextFormField(
                          key: const Key('SignUpForm_passwordInput_textField'),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(icon: const Icon(Icons.visibility_off_outlined), onPressed: () {}),
                            labelText: 'Parol',
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
                          obscureText: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, bottom: size.height * 0.04, right: size.width * 0.05),
                        child: TextFormField(
                          key: const Key('SignUpForm_passwordInput_textField'),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(icon: const Icon(Icons.visibility_off_outlined), onPressed: () {}),
                            labelText: 'Parolni tasdiqlang',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.6),
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05, bottom: size.height * 0.03),
                        child: GestureDetector(
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Men ro\'yxatdan o\'tib, '),
                                TextSpan(text: 'foydalanuvchi shartnomasini ', style: TextStyle(color: Colors.indigo, decoration: TextDecoration.underline)),
                                TextSpan(text: 'qabul qilaman'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xff326A32),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.transparent,
                            style: BorderStyle.solid,
                            width: 1,
                          ),
                        ),
                        child: ElevatedButton(
                          key: const Key('SignUpForm_continue_raisedButton'),
                          onPressed: () {
                            _createAccountWithEmailAndPassword(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Davom Etish'.toUpperCase(),
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: size.height * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                    ],
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  void _createAccountWithEmailAndPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
        SignUpRequested(
          _emailController.text,
          _passwordController.text,
        ),
      );
    }
  }
}
