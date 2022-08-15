import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/blog_screen/post_page.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';


class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> with SingleTickerProviderStateMixin {
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
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text(
          'Blog',
          style: TextStyle(fontSize: size.width * 0.07),
        ),
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
        bottom: TabBar(
          indicatorColor: const Color(0xff326A32),
          labelColor: const Color(0xff326A32),
          unselectedLabelColor: Colors.grey,
          labelStyle: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: size.width * 0.05)),
          controller: _controller,
          tabs: const <Widget>[
            Tab(text: 'So\'ngi maqolalar'),
            Tab(text: 'Biznes'),
            Tab(text: 'Xitoy'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          SingleChildScrollView(
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
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                                    child: Text(
                                      'Xitoydagi safar',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff438E43),
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontSize: size.width * 0.06,
                                        letterSpacing: 0.15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                                    child: LabelIcon(
                                      label: '',
                                      icon: FeatherIcons.share2,
                                      iconSize: size.width * 0.07,
                                      fontSize: size.width * 0.04,
                                      bgColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width,
                                child: Center(
                                  child: Image.asset(
                                    'assets/china.png',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    width: size.width,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '# Biznes, Xitoy',
                                            style: GoogleFonts.montserrat(
                                              fontSize: size.width * 0.04,
                                              color: const Color(0xff326A32),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.4,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          LabelIcon(
                                            label: '23.01.2021',
                                            bgColor: Colors.transparent,
                                            icon: EvaIcons.calendarOutline,
                                            iconSize: size.width * 0.05,
                                            fontSize: size.width * 0.04,
                                            labelColor: Color(0xff326A32),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tristique volutpat commodo, sed risus, vitae. Habitant donec '
                                            'pellentesque et facilisis urna. Venenatis, mauris elementum netus morbi. Elit ultricies nisi, maecenas turpis pulvinar ultrices. Eros, placerat lacinia diam lorem ultrices sem ullamcorper blandit lorem. Urna sodales dictumst amet, ornare et, morbi quis ut arcu.',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.87),
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: size.width * 0.05,
                                          letterSpacing: 0.25,
                                        ),
                                        softWrap: true,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: size.width * 0.03, right: 10),
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => PostPage())),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5, right: 5),
                                        child: Text(
                                          'Davomini o\'qish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: const Color(0xff326A32),
                                        size: size.width * 0.043,
                                      ),
                                    ],
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
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                                    child: Text(
                                      'Xitoydagi safar',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff438E43),
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontSize: size.width * 0.06,
                                        letterSpacing: 0.15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                                    child: LabelIcon(
                                      label: '',
                                      icon: FeatherIcons.share2,
                                      iconSize: size.width * 0.07,
                                      fontSize: size.width * 0.04,
                                      bgColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width,
                                child: Center(
                                  child: Image.asset(
                                    'assets/china.png',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    width: size.width,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '# Biznes, Xitoy',
                                            style: GoogleFonts.montserrat(
                                              fontSize: size.width * 0.04,
                                              color: const Color(0xff326A32),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.4,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          LabelIcon(
                                            label: '23.01.2021',
                                            bgColor: Colors.transparent,
                                            icon: EvaIcons.calendarOutline,
                                            iconSize: size.width * 0.05,
                                            fontSize: size.width * 0.04,
                                            labelColor: Color(0xff326A32),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tristique volutpat commodo, sed risus, vitae. Habitant donec '
                                            'pellentesque et facilisis urna. Venenatis, mauris elementum netus morbi. Elit ultricies nisi, maecenas turpis pulvinar ultrices. Eros, placerat lacinia diam lorem ultrices sem ullamcorper blandit lorem. Urna sodales dictumst amet, ornare et, morbi quis ut arcu.',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.87),
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: size.width * 0.05,
                                          letterSpacing: 0.25,
                                        ),
                                        softWrap: true,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: size.width * 0.03, right: 10),
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => PostPage())),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5, right: 5),
                                        child: Text(
                                          'Davomini o\'qish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: const Color(0xff326A32),
                                        size: size.width * 0.043,
                                      ),
                                    ],
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
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                                    child: Text(
                                      'Xitoydagi safar',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff438E43),
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontSize: size.width * 0.06,
                                        letterSpacing: 0.15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                                    child: LabelIcon(
                                      label: '',
                                      icon: FeatherIcons.share2,
                                      iconSize: size.width * 0.07,
                                      fontSize: size.width * 0.04,
                                      bgColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width,
                                child: Center(
                                  child: Image.asset(
                                    'assets/china.png',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    width: size.width,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '# Biznes, Xitoy',
                                            style: GoogleFonts.montserrat(
                                              fontSize: size.width * 0.04,
                                              color: const Color(0xff326A32),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.4,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          LabelIcon(
                                            label: '23.01.2021',
                                            bgColor: Colors.transparent,
                                            icon: EvaIcons.calendarOutline,
                                            iconSize: size.width * 0.05,
                                            fontSize: size.width * 0.04,
                                            labelColor: Color(0xff326A32),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tristique volutpat commodo, sed risus, vitae. Habitant donec '
                                            'pellentesque et facilisis urna. Venenatis, mauris elementum netus morbi. Elit ultricies nisi, maecenas turpis pulvinar ultrices. Eros, placerat lacinia diam lorem ultrices sem ullamcorper blandit lorem. Urna sodales dictumst amet, ornare et, morbi quis ut arcu.',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.87),
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: size.width * 0.05,
                                          letterSpacing: 0.25,
                                        ),
                                        softWrap: true,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: size.width * 0.03, right: 10),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5, right: 5),
                                        child: Text(
                                          'Davomini o\'qish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: const Color(0xff326A32),
                                        size: size.width * 0.043,
                                      ),
                                    ],
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
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                                    child: Text(
                                      'Xitoydagi safar',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff438E43),
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontSize: size.width * 0.06,
                                        letterSpacing: 0.15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                                    child: LabelIcon(
                                      label: '',
                                      icon: FeatherIcons.share2,
                                      iconSize: size.width * 0.07,
                                      fontSize: size.width * 0.04,
                                      bgColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width,
                                child: Center(
                                  child: Image.asset(
                                    'assets/china.png',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    width: size.width,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '# Biznes, Xitoy',
                                            style: GoogleFonts.montserrat(
                                              fontSize: size.width * 0.04,
                                              color: const Color(0xff326A32),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.4,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          LabelIcon(
                                            label: '23.01.2021',
                                            bgColor: Colors.transparent,
                                            icon: EvaIcons.calendarOutline,
                                            iconSize: size.width * 0.05,
                                            fontSize: size.width * 0.04,
                                            labelColor: Color(0xff326A32),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tristique volutpat commodo, sed risus, vitae. Habitant donec '
                                            'pellentesque et facilisis urna. Venenatis, mauris elementum netus morbi. Elit ultricies nisi, maecenas turpis pulvinar ultrices. Eros, placerat lacinia diam lorem ultrices sem ullamcorper blandit lorem. Urna sodales dictumst amet, ornare et, morbi quis ut arcu.',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.87),
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: size.width * 0.05,
                                          letterSpacing: 0.25,
                                        ),
                                        softWrap: true,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: size.width * 0.03, right: 10),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5, right: 5),
                                        child: Text(
                                          'Davomini o\'qish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: const Color(0xff326A32),
                                        size: size.width * 0.043,
                                      ),
                                    ],
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
                          padding: EdgeInsets.symmetric(vertical: size.width * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20, bottom: 15),
                                    child: Text(
                                      'Xitoydagi safar',
                                      style: GoogleFonts.montserrat(
                                        color: const Color(0xff438E43),
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal,
                                        fontSize: size.width * 0.06,
                                        letterSpacing: 0.15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15, bottom: 15),
                                    child: LabelIcon(
                                      label: '',
                                      icon: FeatherIcons.share2,
                                      iconSize: size.width * 0.07,
                                      fontSize: size.width * 0.04,
                                      bgColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width,
                                child: Center(
                                  child: Image.asset(
                                    'assets/china.png',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                    width: size.width,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: size.width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            '# Biznes, Xitoy',
                                            style: GoogleFonts.montserrat(
                                              fontSize: size.width * 0.04,
                                              color: const Color(0xff326A32),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.4,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          LabelIcon(
                                            label: '23.01.2021',
                                            bgColor: Colors.transparent,
                                            icon: EvaIcons.calendarOutline,
                                            iconSize: size.width * 0.05,
                                            fontSize: size.width * 0.04,
                                            labelColor: Color(0xff326A32),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac tristique volutpat commodo, sed risus, vitae. Habitant donec '
                                            'pellentesque et facilisis urna. Venenatis, mauris elementum netus morbi. Elit ultricies nisi, maecenas turpis pulvinar ultrices. Eros, placerat lacinia diam lorem ultrices sem ullamcorper blandit lorem. Urna sodales dictumst amet, ornare et, morbi quis ut arcu.',
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.87),
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: size.width * 0.05,
                                          letterSpacing: 0.25,
                                        ),
                                        softWrap: true,
                                        textDirection: TextDirection.ltr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: size.width * 0.03, right: 10),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5, right: 5),
                                        child: Text(
                                          'Davomini o\'qish',
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xff438E43),
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 20,
                                            height: 1.6,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: const Color(0xff326A32),
                                        size: size.width * 0.043,
                                      ),
                                    ],
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
          const Center(
            child: Text('Biznes'),
          ),
          const Center(
            child: Text('Xitoy'),
          ),
        ],
      ),
    );
  }
}
