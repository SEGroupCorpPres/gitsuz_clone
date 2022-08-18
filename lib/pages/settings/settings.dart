import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:gitsuz/bloc/auth/auth_bloc.dart';
import 'package:gitsuz/pages/proposition/list_propositions.dart';
import 'package:gitsuz/pages/settings/edit_email_or_phone.dart';
import 'package:gitsuz/pages/settings/edit_password.dart';
import 'package:gitsuz/pages/settings/lang_settings.dart';
import 'package:gitsuz/repositories/auth_repository.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  _showAlert(BuildContext context) {
    showPlatformDialog(
      context: context,
      builder: (_) => BasicDialogAlert(
        title: Text("Current Location Not Available"),
        content:
        Text("Your current location cannot be determined at this time."),
        actions: <Widget>[
          BasicDialogAction(
            title: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
  Widget _buildListItem(String title) {
    return Column(
      children: [
        Container(
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Text(title)),
            ],
          ),
        ),
        const Divider(height: 0.5),
      ],
    );
  }

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
          automaticallyImplyLeading: true,
          title: Text(
            'Sozlamalar',
            style: TextStyle(fontSize: size.width * 0.07),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () => context.read<AuthBloc>().add(SignOutRequested()),
                child: const Icon(
                  FeatherIcons.logOut,
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
                                    GestureDetector(
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const EditEmailOrPhone())),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.55,
                                            child: LabelIcon(
                                              label: 'Email va Telefon',
                                              bgColor: Colors.transparent,
                                              icon: Icons.edit_note,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                              iconColor: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: size.width * 0.2,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
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
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const EditPassword())),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.6,
                                            child: LabelIcon(
                                              label: 'Parolni o\'zgartirish',
                                              bgColor: Colors.transparent,
                                              icon: Icons.lock_outlined,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                              iconColor: Colors.black,
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
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LangSettings())),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.5,
                                            child: LabelIcon(
                                              label: 'Til Sozlamalari',
                                              bgColor: Colors.transparent,
                                              icon: Icons.translate_outlined,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                              iconColor: Colors.black,
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
                    SizedBox(
                      height: size.height * 0.04,
                    ),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ListOfProposition())),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.75,
                                            child: LabelIcon(
                                              label: 'Gid va tarjimonlar uchun',
                                              bgColor: Colors.transparent,
                                              icon: Icons.business_center_outlined,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                              iconColor: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: size.width * 0.05)
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
                                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ListOfProposition())),
                                      child: Row(
                                        children: [
                                          Icon(Icons.error_outline_outlined, size: size.height * 0.04,),
                                          const SizedBox(width: 35),
                                          Text(
                                            'Dastur haqida',
                                            style: GoogleFonts.montserrat(
                                              fontSize: size.height * 0.03,
                                              color:  Colors.black,
                                            ),
                                          ),
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
                                      onTap: () => _showAlert(context),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: size.width * 0.3,
                                            child: LabelIcon(
                                              label: 'Aloqa',
                                              bgColor: Colors.transparent,
                                              icon: Icons.contact_mail_outlined,
                                              iconSize: size.height * 0.04,
                                              fontSize: size.height * 0.03,
                                              iconColor: Colors.black,
                                            ),
                                          ),
                                          SizedBox(width: size.width * 0.05)
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
