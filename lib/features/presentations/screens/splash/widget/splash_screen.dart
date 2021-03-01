part of '../splash.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startSplashScreen() async {
    return Timer(Duration(seconds: 5), () {
      Get.offAllNamed('/onboarding');
    });
  }

  @override
  void initState() {
    startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FOOD',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins Regular',
              ),
            ),
            Text(
              'No waiting for food',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins Regular',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
