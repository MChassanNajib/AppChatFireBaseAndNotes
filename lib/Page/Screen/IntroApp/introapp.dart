import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mynotes/Page/HomePage/home.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/InputLogin.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:mynotes/Page/LoginPage/inputlogin/components/LoginGoogle.dart';
import 'package:mynotes/Page/LoginPage/inputlogin/components/MethodLogin.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginGoogle(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Inputlogin()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/images/onboarding1.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.orange),
      bodyTextStyle: TextStyle(fontSize: 19.0, color: Colors.white),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.black,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.black,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'Let\'s go right away!',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          onPressed: () => _onIntroEnd(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Background color
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Suitable For Making Small Notes",
          body:
          "For those who like to take notes, My Notes is perfect for use. Because it is very simple and easy to use",
          image: _buildImage('images/onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Light application",
          body:
          "The next advantage of My Notes is that the application is small in size and can be downloaded on various operating systems",
          image: _buildImage('images/onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Easy for use",
          body:
          "The My Notes application is not difficult to use as a media note and is suitable for everyday use",
          image: _buildImage('images/onboarding3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: _buildImage('images/project - logo.png', 300),
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 2,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter,
          ),
          title: "My Notes",
          reverse: true,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      // onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back, color: Colors.white,),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward, color: Colors.white,),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
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
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}