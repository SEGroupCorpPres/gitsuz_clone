import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gitsuz/pages/searc_result/search_result_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();
  String? dropdownValue = 'Yollovchi';
  List<String> dropdownItems = <String>['Gid', 'Tarjimon', 'Yollovchi'];
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
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
                    child: Container(
                      height: size.height * 0.08,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.withOpacity(0.8),
                            style: BorderStyle.solid,
                          )),
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          underline: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(5),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: size.width * 0.06,
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05),
                    child: Container(
                      height: size.height * 0.08,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.withOpacity(0.8),
                            style: BorderStyle.solid,
                          )),
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          underline: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(5),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: size.width * 0.06,
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03, left: size.width * 0.05, right: size.width * 0.05,bottom: size.height * 0.03,),
                    child: Container(
                      height: size.height * 0.08,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.withOpacity(0.8),
                            style: BorderStyle.solid,
                          )),
                      child: Center(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          underline: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(5),
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: size.width * 0.06,
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
    );
  }
}