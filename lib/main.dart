import 'package:fifteen/widget/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Flutter Hover";
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Wrap(
            runSpacing: 1.0,
            spacing: 1.0,
            children: const [
              IconWidget(
                text: "Home",
                icon: FontAwesomeIcons.home,
              ),
              IconWidget(
                text: "About",
                icon: FontAwesomeIcons.stickyNote,
              ),
              IconWidget(
                text: "Service",
                icon: FontAwesomeIcons.servicestack,
              ),
              IconWidget(
                text: "Portfolio",
                icon: FontAwesomeIcons.photoVideo,
              ),
              IconWidget(
                text: "Team",
                icon: FontAwesomeIcons.teamspeak,
              ),
              IconWidget(
                text: "Contact",
                icon: FontAwesomeIcons.envelope,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
