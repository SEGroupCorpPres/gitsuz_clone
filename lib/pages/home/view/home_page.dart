import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Gits.uz',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/save.svg',
                fit: BoxFit.fitWidth,
                height: size.width * 0.06,
              ),
            ),
          )
        ],
        bottom: TabBar(
          labelColor: const Color(0xff326A32),
          unselectedLabelColor: Colors.grey,
          labelStyle: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: size.width * 0.04)),
          controller: _controller,
          tabs: const <Widget>[
            Tab(text: 'Gid'),
            Tab(text: 'Og\'zaki tarj.'),
            Tab(text: 'Yozma tarj.'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03, vertical: size.width * 0.05),
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03, vertical: size.width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              LabelIcon(
                                label: '1245',
                                icon: Icons.remove_red_eye_outlined,
                                iconSize: size.width * 0.05,
                                fontSize: size.width * 0.04,
                                labelColor: Colors.grey,
                                bgColor: Colors.transparent,
                                iconColor: Colors.grey,
                              ),
                              SizedBox(width: size.width * 0.03),
                              LabelIcon(
                                label: '',
                                icon: Icons.task_alt_outlined,
                                iconSize: size.width * 0.05,
                                fontSize: size.width * 0.04,
                                bgColor: Colors.transparent,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage('assets/Sulaymon.jpg'),
                                      radius: size.width * 0.08,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Abdusattor Ergashev',
                                          style: Theme.of(context).textTheme.headline5,
                                        ),
                                        Text('33 yosh | Gid va Tarjimon')
                                      ],
                                    ),
                                    SizedBox(
                                      width: size.width * 0.04,
                                    )
                                  ],
                                ),
                                SizedBox(width: size.height * 0.02,),
                                SizedBox(
                                  width: size.width * 0.45,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      LabelIcon(
                                        label: '9.2/10',
                                        icon: Icons.star,
                                        iconSize: size.width * 0.04,
                                        fontSize: size.width * 0.03,
                                      ),
                                      LabelIcon(
                                        label: '34',
                                        icon: Icons.textsms_outlined,
                                        iconSize: size.width * 0.04,
                                        fontSize: size.width * 0.03,
                                      ),
                                      LabelIcon(
                                        label: '353\$',
                                        icon: Ionicons.wallet_outline,
                                        iconSize: size.width * 0.04,
                                        fontSize: size.width * 0.03,
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:',
                                          style: GoogleFonts.montserrat(
                                            color: Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        Text('Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:',
                                          style: GoogleFonts.montserrat(
                                            color: Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        Text('Rus-tili, Ingliz-tili, Nemis-tili'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: size.width * 0.03),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Profilni ko\'rish',
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff438E43),
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text('Og\'zaki tarj.'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Yozma tarj.'),
            ),
          ),
        ],
      ),
    );
  }
}
