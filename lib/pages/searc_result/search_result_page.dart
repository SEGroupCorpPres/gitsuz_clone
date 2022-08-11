import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Saqlanganlar',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Ionicons.filter_outline,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.045, vertical: size.width * 0.055),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.025),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
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
                                iconSize: size.width * 0.045,
                                fontSize: size.width * 0.037,
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
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                                        radius: size.width * 0.085,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Abdusattor Ergashev',
                                            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: size.width * 0.065, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '33 yosh | Gid va Tarjimon',
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.045, fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: size.width * 0.03)
                                    ],
                                  ),
                                ),
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
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff438E43), fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 1.5, height: 1.6),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Text(
                                            'Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'.toUpperCase(),
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black.withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 1.5,
                                                height: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff438E43),
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 1.6),
                                        ),
                                        Text(
                                          'Rus-tili, Ingliz-tili, Nemis-tili'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 2),
                                        ),
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
                                    color: const Color(0xff438E43), fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 20, height: 1.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
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
                                iconSize: size.width * 0.045,
                                fontSize: size.width * 0.037,
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
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                                        radius: size.width * 0.085,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Abdusattor Ergashev',
                                            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: size.width * 0.065, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '33 yosh | Gid va Tarjimon',
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.045, fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: size.width * 0.03)
                                    ],
                                  ),
                                ),
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
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff438E43), fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 1.5, height: 1.6),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Text(
                                            'Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'.toUpperCase(),
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black.withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 1.5,
                                                height: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff438E43),
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 1.6),
                                        ),
                                        Text(
                                          'Rus-tili, Ingliz-tili, Nemis-tili'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 2),
                                        ),
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
                                    color: const Color(0xff438E43), fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 20, height: 1.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.025),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
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
                                iconSize: size.width * 0.045,
                                fontSize: size.width * 0.037,
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
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                                        radius: size.width * 0.085,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Abdusattor Ergashev',
                                            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: size.width * 0.065, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '33 yosh | Gid va Tarjimon',
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.045, fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: size.width * 0.03)
                                    ],
                                  ),
                                ),
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
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff438E43), fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 1.5, height: 1.6),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Text(
                                            'Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'.toUpperCase(),
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black.withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 1.5,
                                                height: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff438E43),
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 1.6),
                                        ),
                                        Text(
                                          'Rus-tili, Ingliz-tili, Nemis-tili'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 2),
                                        ),
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
                                    color: const Color(0xff438E43), fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 20, height: 1.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
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
                                iconSize: size.width * 0.045,
                                fontSize: size.width * 0.037,
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
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                                        radius: size.width * 0.085,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Abdusattor Ergashev',
                                            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: size.width * 0.065, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '33 yosh | Gid va Tarjimon',
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.045, fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: size.width * 0.03)
                                    ],
                                  ),
                                ),
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
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff438E43), fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 1.5, height: 1.6),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Text(
                                            'Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'.toUpperCase(),
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black.withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 1.5,
                                                height: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff438E43),
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 1.6),
                                        ),
                                        Text(
                                          'Rus-tili, Ingliz-tili, Nemis-tili'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 2),
                                        ),
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
                                    color: const Color(0xff438E43), fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 20, height: 1.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.025),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
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
                                iconSize: size.width * 0.045,
                                fontSize: size.width * 0.037,
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
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                                        radius: size.width * 0.085,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Abdusattor Ergashev',
                                            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: size.width * 0.065, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '33 yosh | Gid va Tarjimon',
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.045, fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: size.width * 0.03)
                                    ],
                                  ),
                                ),
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
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff438E43), fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 1.5, height: 1.6),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Text(
                                            'Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'.toUpperCase(),
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black.withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 1.5,
                                                height: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff438E43),
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 1.6),
                                        ),
                                        Text(
                                          'Rus-tili, Ingliz-tili, Nemis-tili'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 2),
                                        ),
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
                                    color: const Color(0xff438E43), fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 20, height: 1.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: size.height * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
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
                                iconSize: size.width * 0.045,
                                fontSize: size.width * 0.037,
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
                            padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                                        radius: size.width * 0.085,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Abdusattor Ergashev',
                                            style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: size.width * 0.065, fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '33 yosh | Gid va Tarjimon',
                                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.045, fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: size.width * 0.03)
                                    ],
                                  ),
                                ),
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
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Xizmat ko\'rsatish shaxarlari:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Color(0xff438E43), fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, letterSpacing: 1.5, height: 1.6),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                                          child: Text(
                                            'Gonkong, Guanchjou, Guzhen, Dongguan, Makao, Foshan, Tszyanmen, Chjuxay, Shenchjen'.toUpperCase(),
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black.withOpacity(0.8),
                                                fontWeight: FontWeight.w400,
                                                fontStyle: FontStyle.normal,
                                                letterSpacing: 1.5,
                                                height: 2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tillar:'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: const Color(0xff438E43),
                                              fontWeight: FontWeight.w600,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 1.6),
                                        ),
                                        Text(
                                          'Rus-tili, Ingliz-tili, Nemis-tili'.toUpperCase(),
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              letterSpacing: 0.25,
                                              height: 2),
                                        ),
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
                                    color: const Color(0xff438E43), fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, fontSize: 20, height: 1.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
