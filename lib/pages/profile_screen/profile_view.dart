import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/save/save_page.dart';
import 'package:gitsuz/widgets/label_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:video_player/video_player.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: size.height * 0.2 + 120,
                    width: double.maxFinite,
                  ),
                  SizedBox(
                    height: size.height * 0.2 + 65,
                    child: AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        children: <Widget>[
                          VideoPlayer(_controller),
                          _ControlsOverlay(controller: _controller),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: CircleAvatar(
                      radius: ((size.height * 0.2 + 120) - (size.height * 0.2 + 65)) + 2,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: ((size.height * 0.2 + 120) - (size.height * 0.2 + 65)),
                        backgroundImage: const AssetImage('assets/Sulaymon.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color(0xff326A32), style: BorderStyle.solid, width: 1),
                          ),
                          height: size.height * 0.05,
                          width: 36,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              EvaIcons.calendarOutline,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: size.height * 0.05,
                          width: size.width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color(0xff326A32),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Bog\'lanish',
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
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
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abdusattor Ergashev',
                            style: Theme.of(context).textTheme.headline5?.copyWith(
                                  fontSize: size.width * 0.05,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            '33 yosh | Gid va Tarjimon',
                            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontSize: size.width * 0.035,
                                  fontWeight: FontWeight.w500,
                                ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Hello! I’m Abdusattor Ergashev. Lorem ipsum dolor sit amet, consectetur adipiscing elit. A eleifend pretium quis sed. Suspendisse viverra odio laoreet netus lacus facilisis malesuada non. Gravida id sed tellus nec elit adipiscing risus. Pretium et consequat in ut imperdiet nec tortor'
                        'Lectus sed tempus arcu vel sit. Tempor amet nunc erat vivamus arcu. Arcu ut enim, ut quis nisi felis. Ac, dignissim est ligula sit nunc '
                        'bibendum. Donec nisi quis elit eget at tellus. Arcu scelerisque risus sed sed amet. Est tortor, nunc suscipit ac, et quis id ut turpis. '
                        'Lacinia a, id viverra volutpat, mattis. Sit massa sit ut egestas.',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: size.width * 0.035,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.25,
                            ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Qatnashgan tadbirlarim',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          text: '1. 2010 Yil:',
                          children: [
                            TextSpan(
                              text: ' Elit purus cursus ornare feugiat integer purus cursus ornare',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: '2. 2011 Yil:',
                          children: [
                            TextSpan(
                              text: ' Elit purus cursus ornare feugiat',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          ProfilLabelIcon(label: '9/10', icon: Icons.star, iconSize: 30, fontSize: 15),
                          ProfilLabelIcon(label: 'Fikrlar: 34', icon: Icons.textsms_outlined, iconSize: 30, fontSize: 15),
                          ProfilLabelIcon(label: '355\$', icon: Ionicons.wallet_outline, iconSize: 30, fontSize: 15),
                        ],
                      ),
                      const SizedBox(height: 45),
                      Container(
                        color: const Color(0xffBBDFBB),
                        height: size.height * 0.06,
                        child: Center(
                          child: Text(
                            'Ma\'lumotlarim va Ish tajribam',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: const Color(0xff2B5C2B),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.15,
                                fontSize: size.height * 0.025,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 45),
                      Text(
                        'Institut yoki Universitet',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          text: '1. 1997 Yil:',
                          children: [
                            TextSpan(
                              text: ' Toshkent Axborot va Texnologiya Instituti.',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                              children: [
                                TextSpan(
                                  text: 'Mutaxasislik:',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                ),
                                TextSpan(
                                  text: 'Tarjimon',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ],
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          text: '2. 2004 Yil:',
                          children: [
                            TextSpan(
                              text: ' Elit purus cursus ornare feugiat',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Tajriba:',
                              children: [
                                TextSpan(
                                  text: ' 4 yil',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: 'Hozirgi ish joyi:',
                              children: [
                                TextSpan(
                                  text: ' Samani Tour',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: 'Lavozimi:',
                              children: [
                                TextSpan(
                                  text: ' Menejer',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: 'Ish vaqti:',
                              children: [
                                TextSpan(
                                  text: ' 10:00 - 18:00',
                                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                        fontSize: size.width * 0.035,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Sertificat va Diplomlar:',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
                        width: double.infinity,
                        height: 400,
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: decImage.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GridTile(
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(decImage[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        color: const Color(0xffBBDFBB),
                        height: size.height * 0.06,
                        child: Center(
                          child: Text(
                            'Xizmatlar',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: const Color(0xff2B5C2B),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.15,
                                fontSize: size.height * 0.025,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Bir kunlik ish hajmi: ',
                          children: [
                            TextSpan(
                              text: ' 2400 ta so\'z',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: 'Tarjima qilish uchun foydalanadigan CAT dasturlari: ',
                          children: [
                            TextSpan(
                              text: ' Google Translate Service',
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: size.width * 0.035,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const ProfileDoneIcon(label: 'Og\'zaki tarjima(sinxron)', icon: Icons.check, iconSize: 18, fontSize: 15),
                      const SizedBox(height: 10),
                      const ProfileDoneIcon(label: 'Dam olish kunlari', icon: Icons.check, iconSize: 18, fontSize: 15),
                      const SizedBox(height: 10),
                      const ProfileDoneIcon(label: 'Matnlarni taxrirlash', icon: Icons.check, iconSize: 18, fontSize: 15),
                      const SizedBox(height: 10),
                      const ProfileDoneIcon(label: 'Shoshilinch buyurtmalar', icon: Icons.check, iconSize: 18, fontSize: 15),
                      const SizedBox(height: 10),
                      const ProfileDoneIcon(label: 'Iternetga doimiy kirish imkoni', icon: Icons.check, iconSize: 18, fontSize: 15),
                      const SizedBox(height: 25),
                      Text(
                        'Mavzular',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                      ),
                      Container(
                        color: const Color(0xffBBDFBB),
                        height: size.height * 0.06,
                        child: Center(
                          child: Text(
                            'Galereya',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: const Color(0xff2B5C2B),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.15,
                                fontSize: size.height * 0.025,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: const Color(0xffBBDFBB),
                        height: size.height * 0.06,
                        child: Center(
                          child: Text(
                            'Fikrlar',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: const Color(0xff2B5C2B),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.15,
                                fontSize: size.height * 0.025,
                              ),
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
    );
  }

  List decImage = [
    'assets/Rectangle285.png',
    'assets/Rectangle286.png',
    'assets/Rectangle287.png',
    'assets/Rectangle288.png',
  ];
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.transparent,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 45.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}

class ProfilLabelIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color? iconColor;
  final Color? bgColor;
  final double iconSize;
  final double fontSize;
  final Color? labelColor;

  const ProfilLabelIcon({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconSize,
    required this.fontSize,
    this.bgColor,
    this.iconColor,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: bgColor ?? const Color(0xffEEF7EE),
          radius: 25,
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor ?? const Color(0xff326A32),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: fontSize,
              color: labelColor ?? Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileDoneIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final double iconSize;
  final double fontSize;

  const ProfileDoneIcon({
    Key? key,
    required this.label,
    required this.icon,
    required this.iconSize,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: Colors.black,
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontSize: fontSize,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
