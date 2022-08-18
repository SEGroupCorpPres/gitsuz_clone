import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gitsuz/pages/searc_result/search_result_page.dart';
import 'package:google_fonts/google_fonts.dart';

enum SearchCharacter { online, all }

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();
  String? userType = 'Gid';
  List<String> userTypes = <String>['Gid', 'Tarjimon', 'Yollovchi'];
  String? state = 'Uzbekistan';
  List<String> states = <String>['Uzbekistan', 'USA', 'Saudi Arabia', 'China'];
  String? city = 'Tashkent';
  List<String> cities = <String>['Tashkent', 'Urgench', 'Samarqand', 'Andijon'];
  SearchCharacter? _character = SearchCharacter.online;
  bool? isMale = true;
  bool? isFemale = true;
  final List<String> langs = ['Uzb', 'French', 'Russian', 'English', 'Arabian'];
  List<String> selectedLang = [];

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                      value: userType,
                      onChanged: (String? newValue) {
                        setState(() {
                          userType = newValue;
                        });
                      },
                      items: userTypes.map<DropdownMenuItem<String>>((String value) {
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
                              activeColor: const Color(0xff326A32),
                              onChanged: (SearchCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            const Text('Online'),
                          ],
                        ),
                        Row(
                          children: [
                            Radio<SearchCharacter>(
                              value: SearchCharacter.all,
                              groupValue: _character,
                              activeColor: const Color(0xff326A32),
                              onChanged: (SearchCharacter? value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                            const Text('Barchasi'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonDecoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hint: Text('Til'),
                        style: GoogleFonts.montserrat(fontSize: 18, color: Colors.black, letterSpacing: 0.24),
                        buttonPadding: const EdgeInsets.only(right: 10),
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                        value: selectedLang.isEmpty ? null : selectedLang.last,
                        onChanged: (value) {},
                        items: langs.map(
                          (item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              //disable default onTap to avoid closing menu when selecting an item
                              enabled: false,
                              child: StatefulBuilder(
                                builder: (context, menuSetState) {
                                  final _isSelected = selectedLang.contains(item);
                                  return InkWell(
                                    onTap: () {
                                      _isSelected ? selectedLang.remove(item) : selectedLang.add(item);
                                      //This rebuilds the StatefulWidget to update the button's text
                                      setState(() {});
                                      //This rebuilds the dropdownMenu Widget to update the check mark
                                      menuSetState(() {});
                                    },
                                    child: Container(
                                      height: double.infinity,
                                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Row(
                                        children: [
                                          _isSelected ? const Icon(Icons.check_box_outlined) : const Icon(Icons.check_box_outline_blank),
                                          const SizedBox(width: 16),
                                          Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ).toList(),
                        //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
                        selectedItemBuilder: (context) {
                          return langs.map(
                            (item) {
                              return Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                child: Row(
                                  children: [
                                    Container(
                                      color: Colors.redAccent,
                                      child: Text(
                                        selectedLang.join(', '),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        // textAlign: TextAlign.left,
                                        textDirection: TextDirection.ltr,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList();
                        },
                        isExpanded: true,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        'Jinsi',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.15,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isMale,
                              activeColor: const Color(0xff326A32),
                              onChanged: ( value) {
                                setState(() {
                                  isMale = value;
                                });
                              },
                            ),
                            const Text('Erkak'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isFemale,
                              activeColor: const Color(0xff326A32),
                              onChanged: ( value) {
                                setState(() {
                                  isFemale = value;
                                });
                              },
                            ),
                            const Text('Ayol'),
                          ],
                        ),
                      ],
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
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xff326A32))
                        ),
                        key: const Key('SearchForm_search_raisedButton'),
                        onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const SearchResultPage())),
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
