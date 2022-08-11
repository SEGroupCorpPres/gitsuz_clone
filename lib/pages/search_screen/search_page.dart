import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gitsuz/pages/searc_result/search_result_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SearchResultPage())),
              child: SvgPicture.asset(
                'assets/save.svg',
                fit: BoxFit.fitWidth,
                height: size.width * 0.06,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
