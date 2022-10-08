// ignore_for_file: library_private_types_in_public_api
import 'package:auth_ui/helper/helper.dart';
import 'package:auth_ui/pages/screen.dart';
import 'package:auth_ui/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rotate,
            duration: const Duration(seconds: 1),
            alignment: Alignment.bottomLeft,
            child: const SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    Widget introImage(String assetName, [double width = 350]) {
      return SvgPicture.asset('assets/$assetName',
          semanticsLabel: 'Intro Images', width: width);
    }

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: introImage('images/Login.svg', 100),
          ),
        ),
      ),
      globalFooter: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RoundedActionBouton(
            onPressed: () => Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rotate,
                    duration: const Duration(seconds: 1),
                    alignment: Alignment.bottomLeft,
                    child: const SignIn())),
            text: 'LOGIN',
          ),
          const SizedBox(height: 20)
        ],
      ),
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: introImage('party.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: introImage('danses.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Kids and teens",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: introImage('foot.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Another title page",
          body: "Another beautiful body text for this example onboarding",
          image: introImage('voyage.svg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of last page - reversed",
          decoration: pageDecoration,
          body: "Another beautiful body text for this example onboarding",
          image: introImage('conferences.svg'),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      back: Icon(Icons.arrow_back, color: pickerColor),
      next: Icon(Icons.arrow_forward, color: pickerColor),
      done: Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: pickerColor)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
