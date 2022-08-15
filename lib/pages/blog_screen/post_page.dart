import 'dart:math';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/save/save_page.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool isScroll = false;
  double _offset = 0.0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        isScroll = true;
        _offset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double maxExtent = 350;
    const double minExtent = 180;

    final double shrinkOffset = _offset;

    final expendPercentage = 1.0 - min(1, shrinkOffset / (maxExtent - minExtent));
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Color.lerp(const Color(0xff326A32), Colors.white, expendPercentage)),
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Xitoyga safar',
                  style: GoogleFonts.montserrat(
                    fontSize: size.width * 0.04,
                    color: Color.lerp(const Color(0xff326A32), Colors.white, expendPercentage),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.15,
                    height: 2.4,
                  ),
                ),
                background: Image.asset(
                  'assets/china.png',
                  fit: BoxFit.cover,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SavePage())),
                    child: const Icon(
                      Icons.bookmark_border_outlined,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      FeatherIcons.share2,
                    ),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: SizedBox(
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
                      labelColor: const Color(0xff326A32),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu et auctor ornare scelerisque ipsum posuere nec. Egestas tellus suspendisse donec arcu adipiscing tellus accumsan. Faucibus pellentesque pretium luctus et. Massa felis risus commodo morbi id semper fringilla ultricies ante. Dui rutrum elit convallis viverra quam odio consequat. Nunc in nisi, ipsum at turpis. Mattis urna venenatis bibendum nunc sit. Gravida odio sagittis aliquam faucibus ultricies ultrices lectus lorem sed. Ut habitant hendrerit justo, ultrices eu amet. Pulvinar ultricies duis sit quis sit praesent donec. Tortor neque, lacinia augue nunc pellentesque interdum. Consectetur egestas vitae semper quis tristique sit.'
                        'Bibendum sit nisi, leo metus. Consectetur lobortis metus pharetra, porttitor diam mi bibendum luctus sit. Dui feugiat morbi donec fringilla mauris est. Sit libero massa proin rhoncus varius tempor pellentesque arcu. Elementum vitae integer rutrum congue. Sit integer pretium sit rutrum.'
                        'Morbi tempus volutpat, viverra integer malesuada sollicitudin. Tristique sapien facilisis pellentesque elementum egestas senectus nec. Senectus lectus tellus massa mattis cras. Arcu fringilla metus diam aliquam enim sed sodales amet. Odio urna, mi id congue amet convallis. Nullam vitae mattis mollis mauris, id. Tincidunt habitant turpis pretium ut ac donec sit amet, rutrum. Rhoncus diam lacus sed enim est eu. Sem sem libero id proin.'
                        'Nulla tincidunt ipsum gravida arcu, vestibulum ut in rutrum. Eget maecenas elementum, justo, augue eget vitae rhoncus nunc accumsan. Pellentesque cursus faucibus tellus et est. Vitae ipsum tincidunt interdum in posuere nunc, lorem eget. Dignissim congue tempor sapien risus amet integer sed nam tristique. Mattis cursus bibendum eu gravida amet, pellentesque tristique sed tristique. Accumsan eget aliquam vitae mattis. Eu quis duis justo sed tristique. Pretium scelerisque enim tincidunt ipsum, odio neque, suscipit.'
                        'Consectetur ut blandit non ut cras id. Purus leo volutpat ut elit. Aliquet neque, gravida tristique tristique elementum. Nibh ut amet suscipit turpis mattis. Quam libero, quisque sodales tempus vitae sit. Sodales magna venenatis quisque eu id neque in hac consectetur. Amet porttitor nulla sodales nulla ornare amet. Leo porttitor orci, leo amet tempus. Imperdiet pellentesque ultrices facilisis ultricies id nunc. Magnis ac consectetur et, aliquam, rhoncus dignissim.'
                        'Amet tincidunt in semper in quis odio phasellus morbi ac. Posuere pellentesque semper consectetur integer. Lacus duis orci, venenatis sit dui faucibus et ultrices eu. Arcu odio pulvinar dui, rutrum suspendisse tortor. At lectus rutrum mattis ut commodo, urna tellus quis sodales. Viverra gravida ac nisl massa. Hac porttitor nunc amet, in tortor consectetur eget.'
                        'Egestas dictumst pulvinar eros amet nec arcu, arcu. Molestie eget sit netus pharetra tristique molestie. Vel accumsan viverra eu faucibus vel. ',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: size.width * 0.035,
                          letterSpacing: 0.25,
                        ),
                        softWrap: true,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: size.width,
                        child: Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                            text: 'Muallif: ',
                            children: [
                              TextSpan(
                                text: 'Abdusattor Ergashev',
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: size.width * 0.035,
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ],
                          ),
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: size.width * 0.035,
                            letterSpacing: 0.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }, childCount: 1),
            ),
          ],
        ),
      ),
    );
  }
}
