part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        backgroundColor: Colors.white,
        title: Text(
          "Welcome Splash Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        image: Image.asset('assets/ic_logo_png.png'),
        navigateAfterSeconds: LoginPage(),
        photoSize: 100.0,
        loadingText: Text("Loading..."),
        loaderColor: Colors.blue);
  }
}
