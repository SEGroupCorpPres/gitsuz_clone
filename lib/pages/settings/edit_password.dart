import 'package:flutter/material.dart';
import 'package:gitsuz/pages/settings/settings.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({Key? key}) : super(key: key);

  @override
  State<EditPassword> createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _checkNewPasswordController = TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _checkNewPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F5),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
          title: Text(
            'Parolni o\'zgartirish',
            style: TextStyle(
              fontSize: size.width * 0.05,
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.05),
                  TextFormField(
                    enabled: true,
                    obscureText: true,
                    autocorrect: true,
                    controller: _currentPasswordController,
                    key: const Key('EditPasswordForm_currentPasswordInput_textField'),
                    decoration: InputDecoration(
                      labelText: 'Joriy Parol',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.6),
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Row(
                    children: [
                      const Spacer(),
                      Text('Parolni tiklash', style: GoogleFonts.montserrat(color: Colors.blue),)
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  TextFormField(
                    obscureText: true,
                    enabled: true,
                    autocorrect: true,
                    controller: _newPasswordController,
                    key: const Key('EditPasswordForm_newPasswordInput_textField'),
                    decoration: InputDecoration(
                      labelText: 'Yangi parol',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.6),
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  TextFormField(
                    obscureText: true,
                    enabled: true,
                    autocorrect: true,
                    controller: _checkNewPasswordController,
                    key: const Key('EditPasswordForm_checkNewPasswordPasswordInput_textField'),
                    decoration: InputDecoration(
                      labelText: 'Parolni tasdiqlang',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.6),
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: size.height * 0.02),
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
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xff326A32))),
                      key: const Key('EditPasswordForm_save_raisedButton'),
                      onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const SettingsPage())),
                      child: Text(
                        'Saqlash'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: 1.25),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
