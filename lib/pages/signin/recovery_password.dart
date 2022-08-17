import 'package:flutter/material.dart';
import 'package:gitsuz/pages/signin/verify_sms.dart';
import 'package:google_fonts/google_fonts.dart';

class RecoveryPasswordPage extends StatelessWidget {
  const RecoveryPasswordPage({Key? key}) : super(key: key);

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const RecoveryPasswordPage());
  }

  static Page<void> page() => const MaterialPage<void>(child: RecoveryPasswordPage());

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
          child: RecoveryPassForm(),
        ),
      ),
    );
  }
}

class RecoveryPassForm extends StatelessWidget {
  const RecoveryPassForm({super.key});

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height - size.height * 0.2,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Center(
                  child: Text(
                    'Email yoki telefon raqamingizni kiriting, biz Sizga parolni tiklash uchun kod yuboramiz',
                    style: GoogleFonts.montserrat(),
                  ),
                ),
              ),
              const _EmailOrPhoneInput(),
            ],
          ),
          SizedBox(child: _ContinueButton()),
        ],
      ),
    );
  }
}

class _EmailOrPhoneInput extends StatelessWidget {
  const _EmailOrPhoneInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, bottom: size.height * 0.01, right: size.width * 0.05),
      child: TextField(
        enabled: true,
        autocorrect: true,
        key: const Key('RecoveryPassForm_emailInput_textField'),
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
      ),
    );
  }
}

class _ContinueButton extends StatelessWidget {
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
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xff326A32))),
        key: const Key('RecoveryPassForm_continue_raisedButton'),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VerifySmsPage())),
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
    );
  }
}
