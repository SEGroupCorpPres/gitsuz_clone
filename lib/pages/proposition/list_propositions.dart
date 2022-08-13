import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/proposition/proposition_page.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class ListOfProposition extends StatelessWidget {
  const ListOfProposition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        title: Text(
          'Arizalar ro\'yxati',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                FeatherIcons.search,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PropositionPage())),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.3,
                          child: null,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.05),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Text(
                                      'ID: #465236538',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        color: const Color(0xff326A32),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: const Color(0xff1489AE),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '34',
                                              style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.done_all_outlined,
                                          size: 20,
                                          color: Color(0xff36BF76),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'London shahridagi Klinikada 2 soat davomida tarjima',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  height: 1.6,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                width: size.width,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Color(0xff326A32),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        LabelIcon(
                                          label: 'Abdug\'ani',
                                          icon: EvaIcons.personOutline,
                                          iconSize: 25,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                        LabelIcon(
                                          label: 'Angliya, London',
                                          icon: FeatherIcons.mapPin,
                                          iconSize: 20,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            LabelIcon(
                                              label: '23.01.2021',
                                              icon: EvaIcons.calendarOutline,
                                              iconSize: 25,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                            LabelIcon(
                                              label: '30.01.2021',
                                              icon: Icons.arrow_forward_ios_outlined,
                                              iconSize: 20,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '20.06.2021',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.1,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.3,
                          child: null,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.05),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Text(
                                      'ID: #465236538',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        color: const Color(0xff326A32),
                                      ),
                                    ),
                                  ),
                                  const Flexible(
                                    flex: 1,
                                    child: Icon(
                                      Icons.access_time_outlined,
                                      size: 20,
                                      color: Color(0xffFFB82E),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'London shahridagi Klinikada 2 soat davomida tarjima',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  height: 1.6,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                width: size.width,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Color(0xff326A32),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        LabelIcon(
                                          label: 'Abdug\'ani',
                                          icon: EvaIcons.personOutline,
                                          iconSize: 25,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                        LabelIcon(
                                          label: 'Angliya, London',
                                          icon: FeatherIcons.mapPin,
                                          iconSize: 20,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            LabelIcon(
                                              label: '23.01.2021',
                                              icon: EvaIcons.calendarOutline,
                                              iconSize: 25,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                            LabelIcon(
                                              label: '30.01.2021',
                                              icon: Icons.arrow_forward_ios_outlined,
                                              iconSize: 20,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '20.06.2021',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.1,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.3,
                          child: null,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.05),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Text(
                                      'ID: #465236538',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        color: const Color(0xff326A32),
                                      ),
                                    ),
                                  ),
                                  const Flexible(
                                    flex: 1,
                                    child: Icon(
                                      Icons.done_all_outlined,
                                      size: 20,
                                      color: Color(0xff36BF76),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'London shahridagi Klinikada 2 soat davomida tarjima',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  height: 1.6,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                width: size.width,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Color(0xff326A32),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        LabelIcon(
                                          label: 'Abdug\'ani',
                                          icon: EvaIcons.personOutline,
                                          iconSize: 25,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                        LabelIcon(
                                          label: 'Angliya, London',
                                          icon: FeatherIcons.mapPin,
                                          iconSize: 20,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            LabelIcon(
                                              label: '23.01.2021',
                                              icon: EvaIcons.calendarOutline,
                                              iconSize: 25,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                            LabelIcon(
                                              label: '30.01.2021',
                                              icon: Icons.arrow_forward_ios_outlined,
                                              iconSize: 20,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '20.06.2021',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.1,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.3,
                          child: null,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.05),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Text(
                                      'ID: #465236538',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        color: const Color(0xff326A32),
                                      ),
                                    ),
                                  ),
                                  const Flexible(
                                    flex: 1,
                                    child: Icon(
                                          Icons.cancel_outlined,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'London shahridagi Klinikada 2 soat davomida tarjima',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  height: 1.6,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                width: size.width,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Color(0xff326A32),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        LabelIcon(
                                          label: 'Abdug\'ani',
                                          icon: EvaIcons.personOutline,
                                          iconSize: 25,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                        LabelIcon(
                                          label: 'Angliya, London',
                                          icon: FeatherIcons.mapPin,
                                          iconSize: 20,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            LabelIcon(
                                              label: '23.01.2021',
                                              icon: EvaIcons.calendarOutline,
                                              iconSize: 25,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                            LabelIcon(
                                              label: '30.01.2021',
                                              icon: Icons.arrow_forward_ios_outlined,
                                              iconSize: 20,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '20.06.2021',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.1,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.12), offset: const Offset(0, 4), blurRadius: 6),
                    ],
                  ),
                  child: SizedBox(
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.3,
                          child: null,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03, horizontal: size.width * 0.05),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    child: Text(
                                      'ID: #465236538',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.1,
                                        color: const Color(0xff326A32),
                                      ),
                                    ),
                                  ),
                                  const Flexible(
                                    flex: 1,
                                    child: Icon(
                                      Icons.done_all_outlined,
                                      size: 20,
                                      color: Color(0xff36BF76),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'London shahridagi Klinikada 2 soat davomida tarjima',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  height: 1.6,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                width: size.width,
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: Color(0xff326A32),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: const [
                                        LabelIcon(
                                          label: 'Abdug\'ani',
                                          icon: EvaIcons.personOutline,
                                          iconSize: 25,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                        LabelIcon(
                                          label: 'Angliya, London',
                                          icon: FeatherIcons.mapPin,
                                          iconSize: 20,
                                          fontSize: 18,
                                          bgColor: Colors.transparent,
                                          iconColor: Colors.white,
                                          labelColor: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            LabelIcon(
                                              label: '23.01.2021',
                                              icon: EvaIcons.calendarOutline,
                                              iconSize: 25,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                            LabelIcon(
                                              label: '30.01.2021',
                                              icon: Icons.arrow_forward_ios_outlined,
                                              iconSize: 20,
                                              fontSize: 18,
                                              bgColor: Colors.transparent,
                                              iconColor: Colors.white,
                                              labelColor: Colors.white,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '20.06.2021',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.1,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
