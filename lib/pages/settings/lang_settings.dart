import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/settings/settings.dart';
import 'package:google_fonts/google_fonts.dart';


class LangSettings extends StatefulWidget {
  const LangSettings({Key? key}) : super(key: key);

  @override
  State<LangSettings> createState() => _LangSettingsState();
}

class _LangSettingsState extends State<LangSettings> {
  final _formKey = GlobalKey<FormState>();
  final List<String> langs = ['Uzb', 'French', 'Russian', 'English', 'Arabian'];
  String? selectedLang = 'Uzb';

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          'Til Sozlamalari',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Til'),
                ),
                borderRadius: BorderRadius.circular(5),
                value: selectedLang,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLang = newValue;
                  });
                },
                items: langs.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                isExpanded: true,
              ),
              const Spacer(),
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
                  key: const Key('SearchForm_search_raisedButton'),
                  onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const SettingsPage())),
                  child: Text(
                    'Saqlash'.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: size.height * 0.03,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
