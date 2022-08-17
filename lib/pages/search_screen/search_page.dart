import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gitsuz/pages/searc_result/search_result_page.dart';
import 'package:google_fonts/google_fonts.dart';

enum SearchCharacter { online, all }
enum SexCharacter { male, female }

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();
  String? dropdownValue = 'Yollovchi';
  List<String> dropdownItems = <String>['Gid', 'Tarjimon', 'Yollovchi'];
  SearchCharacter? _character = SearchCharacter.online;
  SexCharacter? _sex = SexCharacter.male;

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Text(
          'Qidiruv',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SearchResultPage())),
              child: SvgPicture.asset(
                'assets/save.svg',
                fit: BoxFit.fitWidth,
                height: size.width * 0.06,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
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
                    SizedBox(height: size.height * 0.02),
                    DropdownButtonFormField<String>(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Davlat'),
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
                    SizedBox(height: size.height * 0.02),
                    DropdownButtonFormField<String>(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Shahar'),
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
                    SizedBox(height: size.height * 0.02),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today_outlined),
                        label: Text('Sana'),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio<SearchCharacter>(
                              value: SearchCharacter.online,
                              groupValue: _character,
                              onChanged: (SearchCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            Text('Thomas Jefferson'),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<SearchCharacter>(
                              value: SearchCharacter.all,
                              groupValue: _character,
                              onChanged: (SearchCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            const Text('Lafayette'),
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
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
                        key: const Key('SearchForm_search_raisedButton'),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FeatherIcons.search,
                              color: Colors.white,
                              size: size.height * 0.03,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              'Qidirish'.toUpperCase(),
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: size.height * 0.03,
                                ),
                              ),
                            ),
                          ],
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
      ),
    );
  }
}
