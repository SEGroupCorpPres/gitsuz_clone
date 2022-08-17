import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const NewPasswordPage());
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
            'Parolni tiklash',
            style: TextStyle(
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: NewPassForm(),
        ),
      ),
    );
  }
}

class NewPassForm extends StatelessWidget {
  const NewPassForm({super.key});

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xffF5F6F5),
      height: size.height - size.height * 0.2,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              _PasswordInput(),
              _CheckingPasswordInput(),
            ],
          ),
          SizedBox(child: _SignInButton()),
        ],
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.05, left: size.width * 0.05, bottom: size.height * 0.02, right: size.width * 0.05),
      child: TextField(
        key: const Key('SignInForm_passwordInput_textField'),
        decoration: InputDecoration(
          labelText: 'Yangi Parol',
          suffixIcon: IconButton(icon: const Icon(Icons.visibility_off_outlined), onPressed: () {}),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.6),
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}

class _CheckingPasswordInput extends StatelessWidget {
  const _CheckingPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.01, left: size.width * 0.05, bottom: size.height * 0.05, right: size.width * 0.05),
      child: TextField(
        key: const Key('SignInForm_checkingPasswordInput_textField'),
        decoration: InputDecoration(
          labelText: 'Parolni Tasdiqlash',
          suffixIcon: IconButton(icon: const Icon(Icons.visibility_off_outlined), onPressed: () {}),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.6),
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Container(
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
        key: const Key('VerifySmsForm_continue_raisedButton'),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const NewPasswordPage())),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kirish'.toUpperCase(),
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
    );
  }
}
