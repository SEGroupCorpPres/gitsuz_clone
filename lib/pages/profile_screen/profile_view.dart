import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:gitsuz/pages/save/save_page.dart';
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
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.035, fontWeight: FontWeight.w500, letterSpacing: 0.25),
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
                      SizedBox(height: 10),
                      Text(
                        '1. 2010 Yil: Elit purus cursus ornare feugiat integer purus cursus ornare',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontSize: size.width * 0.035,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        '2. 2011 Yil: Elit purus cursus ornare feugiat.',
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: size.width * 0.035, fontWeight: FontWeight.w500, letterSpacing: 0.25),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const[
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
                            'Ma\'lumotlarim va Ish tajribam',style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Color(0xff2B5C2B),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.15
                            ),
                          ),
                          ),
                        ),
                      )
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
