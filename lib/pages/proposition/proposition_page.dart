import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class PropositionPage extends StatelessWidget {
  const PropositionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F5),
      appBar: AppBar(
        title: Text(
          '#465236538',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
        elevation: 0,
        actions: [
          PopupMenuButton(
            splashRadius: 5,
            itemBuilder: (ctx) => [
              _buildPopupMenuItem(
                title: 'O\'zgartirish',
                iconData: FeatherIcons.edit3,
                onTap: () {},
              ),
              _buildPopupMenuItem(
                title: 'Ulashish',
                iconData: FeatherIcons.share2,
                onTap: () {},
              ),
              _buildPopupMenuItem(
                title: 'O\'chirish',
                iconData: FeatherIcons.trash2,
                onTap: () {},
                iconColor: Colors.redAccent,
                titleColor: Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03, horizontal: size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'E\'lon beruvchi: ',
                        icon: EvaIcons.personOutline,
                        iconSize: 25,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Abdusattor',
                        style: GoogleFonts.montserrat(
                          color: const Color(0xff326A32),
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'Shahar: ',
                        icon: FeatherIcons.mapPin,
                        iconSize: 20,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Angliya, London',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'Sana: ',
                        icon: EvaIcons.calendarOutline,
                        iconSize: 20,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '23.01.2021',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const LabelIcon(
                        label: '30.01.2021',
                        icon: Icons.arrow_forward_ios_outlined,
                        iconSize: 15,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'Taxminiy narx: ',
                        icon: Ionicons.wallet_outline,
                        iconSize: 18,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '50\$ kuniga',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'Kim kerak: ',
                        icon: Icons.person_search_outlined,
                        iconSize: 25,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Tarjimon',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'Tillar: ',
                        icon: EvaIcons.globe,
                        iconSize: 25,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Rus-tili, Ingliz-tili',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const LabelIcon(
                        label: 'Kisilar soni: ',
                        icon: EvaIcons.peopleOutline,
                        iconSize: 25,
                        fontSize: 20,
                        bgColor: Colors.transparent,
                        iconColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '4 kishi',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 0.25,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03, horizontal: size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width,
                    child: Text(
                      'Izoh',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xff438E43),
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In bibendum sodales tristique dolor turpis. Non pretium ante gravida suscipit faucibus lectus aliquet nullam. Justo sapien quam tincidunt lectus laoreet lacus eu sit. Aliquam nulla pellentesque arcu est ullamcorper pretium, elit." +
                          "Nunc adipiscing vel praesent urna. Vulputate amet phasellus lobortis at cras pellentesque consectetur purus. Lectus sem aliquet hendrerit cras.",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03, horizontal: size.height * 0.03),
              child: Column(
                children: [
                  SizedBox(
                    width: size.width,
                    child: Text(
                      'Arizaga kelgan javoblar',
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        letterSpacing: 0.15,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                                      fontSize: size.width * 0.055,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                              ),
                                              Text(
                                                '33 yosh | Gid va Tarjimon',
                                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                                      fontSize: size.width * 0.04,
                                                      fontWeight: FontWeight.w500,
                                                    ),
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
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Porta quis mi egestas massa tortor. Pellentesque bibendum commodo sed'
                                      ' massa egestas augue commodo. Purus ut facilisis nisi, eros nisi auctor ornare proin. Arcu orci, sem facilisi vel a. '
                                      'Praesent non potenti sit eu pharetra. Porttitor habitant congue pretium turpis purus, at egestas tempor varius. Adipiscing pharetra sit euismod in ornare. Risus vitae aliquet donec tempus sed mauris. Eu proin amet, turpis maecenas erat lorem purus odio.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: 0.25,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03, right: 20),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'O\'chirish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff7A7A7A),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Profilni ko\'rish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
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
                                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                                  fontSize: size.width * 0.055,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '33 yosh | Gid va Tarjimon',
                                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                                  fontSize: size.width * 0.04,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Porta quis mi egestas massa tortor. Pellentesque bibendum commodo sed'
                                          ' massa egestas augue commodo. Purus ut facilisis nisi, eros nisi auctor ornare proin. Arcu orci, sem facilisi vel a. '
                                          'Praesent non potenti sit eu pharetra. Porttitor habitant congue pretium turpis purus, at egestas tempor varius. Adipiscing pharetra sit euismod in ornare. Risus vitae aliquet donec tempus sed mauris. Eu proin amet, turpis maecenas erat lorem purus odio.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: 0.25,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03, right: 20),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'O\'chirish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff7A7A7A),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Profilni ko\'rish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
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
                                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                                  fontSize: size.width * 0.055,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '33 yosh | Gid va Tarjimon',
                                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                                  fontSize: size.width * 0.04,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Porta quis mi egestas massa tortor. Pellentesque bibendum commodo sed'
                                          ' massa egestas augue commodo. Purus ut facilisis nisi, eros nisi auctor ornare proin. Arcu orci, sem facilisi vel a. '
                                          'Praesent non potenti sit eu pharetra. Porttitor habitant congue pretium turpis purus, at egestas tempor varius. Adipiscing pharetra sit euismod in ornare. Risus vitae aliquet donec tempus sed mauris. Eu proin amet, turpis maecenas erat lorem purus odio.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: 0.25,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03, right: 20),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'O\'chirish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff7A7A7A),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Profilni ko\'rish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
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
                                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                                  fontSize: size.width * 0.055,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '33 yosh | Gid va Tarjimon',
                                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                                  fontSize: size.width * 0.04,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Porta quis mi egestas massa tortor. Pellentesque bibendum commodo sed'
                                          ' massa egestas augue commodo. Purus ut facilisis nisi, eros nisi auctor ornare proin. Arcu orci, sem facilisi vel a. '
                                          'Praesent non potenti sit eu pharetra. Porttitor habitant congue pretium turpis purus, at egestas tempor varius. Adipiscing pharetra sit euismod in ornare. Risus vitae aliquet donec tempus sed mauris. Eu proin amet, turpis maecenas erat lorem purus odio.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: 0.25,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03, right: 20),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'O\'chirish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff7A7A7A),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Profilni ko\'rish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
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
                                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                                  fontSize: size.width * 0.055,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                '33 yosh | Gid va Tarjimon',
                                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                                  fontSize: size.width * 0.04,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Porta quis mi egestas massa tortor. Pellentesque bibendum commodo sed'
                                          ' massa egestas augue commodo. Purus ut facilisis nisi, eros nisi auctor ornare proin. Arcu orci, sem facilisi vel a. '
                                          'Praesent non potenti sit eu pharetra. Porttitor habitant congue pretium turpis purus, at egestas tempor varius. Adipiscing pharetra sit euismod in ornare. Risus vitae aliquet donec tempus sed mauris. Eu proin amet, turpis maecenas erat lorem purus odio.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black.withOpacity(0.8),
                                        letterSpacing: 0.25,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03, right: 20),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'O\'chirish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff7A7A7A),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: size.width * 0.03),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Profilni ko\'rish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                        ),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem _buildPopupMenuItem({
    required String title,
    required IconData iconData,
    required Function() onTap,
    Color? iconColor,
    Color? titleColor,
  }) {
    return PopupMenuItem(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            iconData,
            color: iconColor ?? Colors.black,
          ),
          Text(
            title,
            style: GoogleFonts.montserrat(
              color: titleColor ?? Colors.black,
              letterSpacing: 0.25,
              fontWeight: FontWeight.w400,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
