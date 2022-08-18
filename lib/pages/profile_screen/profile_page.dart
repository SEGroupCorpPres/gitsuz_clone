import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitsuz/bloc/auth/auth_bloc.dart';
import 'package:gitsuz/pages/profile_screen/edit_prodile.dart';
import 'package:gitsuz/pages/proposition/list_propositions.dart';
import 'package:gitsuz/pages/save/save_page.dart';
import 'package:gitsuz/pages/settings/settings.dart';
import 'package:gitsuz/repositories/auth_repository.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => AuthBloc(
        authRepository: RepositoryProvider.of<AuthRepository>(context),
      ),
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6F5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Profil',
            style: TextStyle(fontSize: size.width * 0.07),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsPage())),
                child: const Icon(
                  Ionicons.settings_outline,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.045, vertical: size.width * 0.055),
                child: Column(
                  children: [
                    Container(
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
                                            ],
                                          ),
                                          SizedBox(width: size.width * 0.03)
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.45,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: const Color(0xffEEF7EE),
                                                radius: 15,
                                                child: Icon(
                                                  FeatherIcons.mapPin,
                                                  size: size.height * 0.02,
                                                  color: const Color(0xff326A32),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                'Angliya, London',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: size.height * 0.02,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.1,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: const Color(0xffEEF7EE),
                                                radius: 15,
                                                child: Icon(
                                                  Icons.business_center_outlined,
                                                  size: size.height * 0.02,
                                                  color: const Color(0xff326A32),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                'Kun.Uz, Company',
                                                style: GoogleFonts.montserrat(
                                                  fontSize: size.height * 0.02,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 0.1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: size.width * 0.03),
                                child: GestureDetector(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => EditProfile())),
                                  child: Text(
                                    'Profilni o\'zgartirish',
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
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
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
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.01),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ListOfProposition())),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.41,
                                            child: LabelIcon(
                                              label: 'Arizalarim',
                                              bgColor: Colors.transparent,
                                              icon: Icons.description_outlined,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.2,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios_outlined,
                                                  size: size.height * 0.025,
                                                  color: const Color(0xff326A32),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 15),
                                      child: Divider(
                                        color: Colors.grey,
                                        height: 10,
                                        indent: size.width * 0.15,
                                        endIndent: 0,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SavePage())),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.48,
                                            child: LabelIcon(
                                              label: 'Saqlanganlar',
                                              bgColor: Colors.transparent,
                                              icon: Icons.bookmark_border_outlined,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.2,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20),
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios_outlined,
                                                  size: size.height * 0.025,
                                                  color: const Color(0xff326A32),
                                                )
                                              ],
                                            ),
                                          )
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
          ],
        ),
      ),
    );
  }
}
