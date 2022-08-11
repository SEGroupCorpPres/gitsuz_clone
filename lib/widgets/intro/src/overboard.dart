import 'dart:math';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gitsuz/widgets/intro/src/circular_clipper.dart';
import 'package:gitsuz/widgets/intro/src/overboard_animator.dart';
import 'package:gitsuz/widgets/intro/src/page_model.dart';
import 'package:google_fonts/google_fonts.dart';

enum SwipeDirection { LEFT_TO_RIGHT, RIGHT_TO_LEFT, SKIP_TO_LAST }

class OverBoard extends StatefulWidget {
  /// List of pages to render on-boarding
  final List<PageModel> pages;

  /// Offset to set center point of revealing circle
  final Offset? center;

  /// Enable/disable bullets visibility
  final bool showBullets;

  /// Callback method to capture finish button click
  final VoidCallback finishCallback;

  /// Callback method to capture skip button click
  final VoidCallback? skipCallback;

  /// Customize skip button text
  final String? skipText;

  /// Customize next button text
  final String? nextText;

  /// Customize finish button text
  final String? finishText;

  /// Change action button colors
  final Color buttonColor;
  final bool allowScroll;

  /// Change active bullet color
  final Color activeBulletColor;

  /// Change inactive bullet color
  final Color inactiveBulletColor;

  // Overboard background provider
  final ImageProvider<Object>? backgroundProvider;

  const OverBoard(
      {Key? key,
      required this.pages,
      this.center,
      this.showBullets = true,
      this.skipText,
      this.nextText,
      this.finishText,
      required this.finishCallback,
      this.skipCallback,
      this.buttonColor = Colors.white,
      this.activeBulletColor = Colors.white,
      this.inactiveBulletColor = Colors.white30,
      this.backgroundProvider,
      this.allowScroll = false})
      : super(key: key);

  @override
  State<OverBoard> createState() => _OverBoardState();
}

class _OverBoardState extends State<OverBoard> with TickerProviderStateMixin {
  late OverBoardAnimator _animator;

  ScrollController _scrollController = ScrollController();
  double _bulletPadding = 5.0, _bulletSize = 10.0, _bulletContainerWidth = 0;

  int _counter = 0, _last = 0;
  int _total = 0;
  double initial = 0, distance = 0;
  Random random = Random();
  SwipeDirection _swipeDirection = SwipeDirection.RIGHT_TO_LEFT;

  BoxDecoration _boxDecoration = const BoxDecoration();
  final scrollDuration = const Duration(milliseconds: 1500);
  bool isScrolling = false;

  @override
  void initState() {
    super.initState();

    _animator = OverBoardAnimator(this);
    _total = widget.pages.length;

    if (widget.backgroundProvider != null) {
      _boxDecoration = BoxDecoration(image: DecorationImage(image: widget.backgroundProvider!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.allowScroll ? _keyboardWrapper() : _getStack(),
    );
  }

  _keyboardWrapper() {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (RawKeyEvent e) {
        if (e is RawKeyDownEvent) {
          if (e.isKeyPressed(LogicalKeyboardKey.arrowRight) && _counter < _total - 1) {
            _next();
          } else if (e.isKeyPressed(LogicalKeyboardKey.arrowLeft) && _counter > 0) {
            _goBack();
          }
        }
      },
      child: _scrollWrapper(),
    );
  }

  _scrollWrapper() {
    return Listener(
      onPointerSignal: (event) async {
        if (event is PointerScrollEvent) {
          num scrollDelta = event.scrollDelta.dy;
          if (scrollDelta == 0) {
            scrollDelta = event.scrollDelta.dx;
          }
          if (!isScrolling) {
            isScrolling = true;
            if (scrollDelta.isNegative && _counter > 0) {
              _goBack();
            } else if (!scrollDelta.isNegative && _counter < _total - 1) {
              _next();
            }

            await Future.delayed(scrollDuration);
            isScrolling = false;
          }
        }
      },
      child: _getStack(),
    );
  }

  _getStack() {
    late Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanStart: (DragStartDetails details) {
        initial = details.globalPosition.dx;
      },
      onPanUpdate: (DragUpdateDetails details) {
        distance = details.globalPosition.dx - initial;
      },
      onPanEnd: (DragEndDetails details) {
        initial = 0.0;
        setState(() {
          _last = _counter;
        });
        if (distance > 1 && _counter > 0) {
          _goBack();
        } else if (distance < 0 && _counter < _total - 1) {
          _next();
        }
      },
      child: Stack(
        children: <Widget>[
          _getPage(_last),
          AnimatedBuilder(
            animation: _animator.getAnimator(),
            builder: (context, child) {
              return ClipOval(clipper: CircularClipper(_animator.getAnimator().value, widget.center), child: _getPage(_counter));
            },
            child: Container(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                (_counter < _total - 1
                    ? _counter > 0
                        ? Opacity(
                            child: _getTextButton(widget.skipText ?? "ORTGA", (widget.skipCallback ?? _goBack())),
                            opacity: (_counter < _total - 1) ? 1.0 : 0.0,
                          )
                        : SizedBox(
                            width: size.width * 0.3,
                          )
                    : Opacity(
                        child: _getTextButton(widget.skipText ?? "ORTGA", (widget.skipCallback ?? _goBack())),
                        opacity: (_counter < _total - 1) ? 1.0 : 0.0,
                      )),
                Expanded(
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        _bulletContainerWidth = constraints.maxWidth - 40.0;
                        return Container(
                          padding: const EdgeInsets.all(20.0),
                          child: (widget.showBullets
                              ? SingleChildScrollView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  controller: _scrollController,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      for (int i = 0; i < _total; i++)
                                        Padding(
                                          padding: EdgeInsets.all(_bulletPadding),
                                          child: Container(
                                            height: _bulletSize,
                                            width: _bulletSize,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: (i == _counter ? widget.activeBulletColor : widget.inactiveBulletColor),
                                            ),
                                          ),
                                        )
                                    ],
                                  ),
                                )
                              : Container()),
                        );
                      },
                    ),
                  ),
                ),
                (_counter < _total - 1
                    ? _getTextButton(
                        (widget.nextText ?? "KEYINGISI"),
                        _next,
                        // index: _total,
                      )
                    : _getTextButton(
                        (widget.finishText ?? "KEYINGISI"),
                        widget.finishCallback,
                      )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _getPage(index) {
    PageModel page = widget.pages[index];
    late Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: _boxDecoration.copyWith(
        image: const DecorationImage(
          image: AssetImage('assets/MaskGroup.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 200,
          sigmaY: 40,
        ),
        child: Container(
          color: Colors.white.withOpacity(0.6),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.language_outlined,
                      size: size.width * 0.07,
                    ),
                  ),
                ],
              ),
              page.child != null
                  ? Center(
                      child: page.doAnimateChild
                          ? AnimatedBoard(
                              animator: _animator,
                              child: page.child,
                            )
                          : page.child,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: size.height * 0.05),
                        page.doAnimateImage
                            ? AnimatedBoard(
                                animator: _animator,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  child: Image.asset(page.imageAssetPath!, width: 300.0, height: 300.0),
                                ),
                              )
                            : Image.asset(page.imageAssetPath!, width: 300.0, height: 300.0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                          child: Text(
                            page.title!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: page.titleColor ?? Colors.white,
                                fontSize: size.height * 0.04,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 75.0, left: 40.0, right: 40.0),
                          child: Text(
                            page.body!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: page.bodyColor ?? Colors.white,
                                fontSize: size.height * 0.024,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  _getTextButton(_text, _onPress, {int? index}) {
    late Size size = MediaQuery.of(context).size;
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
      ),
      onPressed: _onPress,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _text == 'ORTGA'
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: size.width * 0.04,
                    color: const Color(0xff1D3D1D),
                  ),
                )
              : const SizedBox(),
          Text(
            _text,
            style: TextStyle(
              color: widget.buttonColor,
            ),
          ),
          _text == 'KEYINGISI'
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: size.width * 0.04,
                    color: const Color(0xff1D3D1D),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  _goBack() {
    setState(() {
      _swipeDirection = SwipeDirection.LEFT_TO_RIGHT;
      _last = _counter;
      _counter--;
    });
    _animate();
  }

  _next() {
    setState(() {
      _swipeDirection = SwipeDirection.RIGHT_TO_LEFT;
      _last = _counter;
      _counter++;
    });
    _animate();
  }

  _skip() {
    setState(() {
      _swipeDirection = SwipeDirection.SKIP_TO_LAST;
      _last = _counter;
      _counter = _total - 1;
    });
    _animate();
  }

  _animate() {
    _animator.getController().forward(from: 0.0);

    double _bulletDimension = (_bulletPadding * 2) + (_bulletSize);
    double _scroll = _bulletDimension * _counter;
    double _maxScroll = _bulletDimension * _total - 1;
    if (_scroll > _bulletContainerWidth && _swipeDirection == SwipeDirection.RIGHT_TO_LEFT) {
      double _scrollDistance = (((_scroll - _bulletContainerWidth) ~/ _bulletDimension) + 1) * _bulletDimension;
      _scrollController.animateTo(_scrollDistance, curve: Curves.easeIn, duration: const Duration(milliseconds: 100));
    } else if (_scroll < (_maxScroll - _bulletContainerWidth) && _swipeDirection == SwipeDirection.LEFT_TO_RIGHT) {
      _scrollController.animateTo(_scroll, curve: Curves.easeIn, duration: const Duration(milliseconds: 100));
    } else if (_swipeDirection == SwipeDirection.SKIP_TO_LAST) {
      _scrollController.animateTo(_maxScroll, curve: Curves.easeIn, duration: const Duration(milliseconds: 100));
    }
  }
}

class AnimatedBoard extends StatelessWidget {
  final Widget? child;
  final OverBoardAnimator animator;

  const AnimatedBoard({Key? key, required this.animator, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(0.0, 50.0 * (1.0 - animator.getAnimator().value), 0.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: child,
      ),
    );
  }
}
