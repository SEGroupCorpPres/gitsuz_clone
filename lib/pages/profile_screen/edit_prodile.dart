import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/profile_screen/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _workPlaceController = TextEditingController();

  String? state = 'Uzbekistan';
  List<String> states = <String>['Uzbekistan', 'USA', 'Saudi Arabia', 'China'];
  String? city = 'Tashkent';
  List<String> cities = <String>['Tashkent', 'Urgench', 'Samarqand', 'Andijon'];

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _workPlaceController.dispose();
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
            'Ro\'yxatdan o\'tish',
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
                  Center(
                    child: GestureDetector(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/Sulaymon.jpg'),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.7),
                            radius: 50,
                            child: CircleAvatar(
                              backgroundColor: Colors.white38,
                              radius: 20,
                              child: const Icon(
                                Icons.file_upload_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  TextFormField(
                    enabled: true,
                    autocorrect: true,
                    key: const Key('SignUpForm_lastNameInput_textField'),
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
                  SizedBox(height: size.height * 0.02),
                  TextFormField(
                    enabled: true,
                    autocorrect: true,
                    key: const Key('SignUpForm_firstNameInput_textField'),
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
                  SizedBox(height: size.height * 0.02),
                  TextFormField(
                    enabled: true,
                    autocorrect: true,
                    key: const Key('SignUpForm_workPlaceInput_textField'),
                    decoration: InputDecoration(
                      labelText: 'Ish Joyi',
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
                  DropdownButtonFormField<String>(
                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Davlat'),
                    ),
                    borderRadius: BorderRadius.circular(5),
                    value: state,
                    onChanged: (String? newValue) {
                      setState(() {
                        state = newValue;
                      });
                    },
                    items: states.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    isExpanded: true,
                  ),
                  SizedBox(height: size.height * 0.02),
                  DropdownButtonFormField<String>(
                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Shahar'),
                    ),
                    borderRadius: BorderRadius.circular(5),
                    value: city,
                    onChanged: (String? newValue) {
                      setState(() {
                        city = newValue;
                      });
                    },
                    items: cities.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    isExpanded: true,
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
                      key: const Key('SignUpForm_save_raisedButton'),
                      onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ProfilePage())),
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
