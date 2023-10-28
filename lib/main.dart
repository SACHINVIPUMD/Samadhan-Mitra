import 'package:Samadhanmitra/regAsLegalServiceProvider.dart';
import 'package:Samadhanmitra/sLocker.dart';
import 'package:flutter/material.dart';
import 'Dashboard-advogate.dart';
import 'flash.dart';
import 'homeLocker.dart';
import 'signup.dart';
import 'dashboard.dart';
import 'otp.dart';
import 'test.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Name',
      theme: ThemeData(
        primarySwatch: createCustomColor(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/flash',
      routes: {
        '/': (context) => const MyHomePage(title: 'Login'),
        '/signup': (context) => const Signup(),
        '/dashboard': (context) => const Dashboard(),
        '/otp' : (context) => const Otp(),
        '/regAsLegalServiceProvider' : (context) => const RegAsLegalServiceProvider(),
        '/flash' : (context) => const Flash(),
        '/dashboard_adv' : (context) => const DashboardAdv(),
        '/test' : (context) => Test(),
        '/sLocker' : (context) => SLocker(),
        '/homeLocker' : (context) => const HomeLocker(),


      },
    );
  }
}

MaterialColor createCustomColor() {
  // Define a list of color shades for your custom color
  List<Map<int, Color>> colorCodes = [
    {50: const Color(0xFF01B399)},
    {100: const Color(0xFF01B399)},
    {200: const Color(0xFF01B399)},
    {300: const Color(0xFF01B399)},
    {400: const Color(0xFF01B399)},
    {500: const Color(0xFF01B399)},
    {600: const Color(0xFF01B399)},
    {700: const Color(0xFF01B399)},
    {800: const Color(0xFF01B399)},
    {900: const Color(0xFF01B399)},
  ];

  // Create the custom color swatch
  Map<int, Color> colorMap = {};
  for (var colorCode in colorCodes) {
    colorMap.addAll(colorCode);
  }
  return MaterialColor(0xFF01B399, colorMap);
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showPassword = false ;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _passtogle() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void validate() {
    Navigator.pushNamed(context, '/homeLocker');
  }

  void navigate() {
    Navigator.pushNamed(context, '/sLocker');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top : 64.0 , left: 24.0 , bottom: 22.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/App-cover.png',
                  width:  444.0 ,
                  height: 309.0 ,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 24.0),
                child: const Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 24.0 , right: 16.0 , top: 10.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide( width: 10.0 , color: Colors.grey),
                    ),
                    hintText: 'Your E-mail' ,
                    hintStyle: const TextStyle(
                      fontFamily: 'Gilroy' ,
                      fontWeight: FontWeight.normal ,
                      fontSize: 16.0 ,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 24.0 , top: 18.0),
                child: const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 24.0 , right: 16.0 , top: 10.0),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      icon: _showPassword ? const Icon(Icons.visibility_outlined) : const Icon(Icons.visibility_off_outlined),
                      onPressed: _passtogle,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide( width: 10.0 , color: Colors.grey),
                    ),
                    hintText: 'Your Password' ,
                    hintStyle: const TextStyle(
                      fontFamily: 'Gilroy' ,
                      fontWeight: FontWeight.normal ,
                      fontSize: 16.0 ,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 16.0 , top: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF01B399),
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 16.0, left: 24.0, top: 32.0),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    height: 44.0,
                    child: ElevatedButton(
                      onPressed: validate,
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF01B399),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        elevation: 1,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gilroy',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children:  [
                      const Text(
                        "Don't have an account?" ,
                        style: TextStyle(
                          color: Colors.grey ,
                          fontSize: 12.0 ,
                          fontFamily: 'Gilroy' ,
                          fontWeight: FontWeight.normal ,
                        ),
                      ) ,
                      const SizedBox(width: 2.5) ,
                      InkWell(
                        onTap: () {
                          navigate();
                        },
                        child: const Text(
                          'Signup' ,
                          style: TextStyle(
                            color: Color(0xff01B399) ,
                            fontSize: 12.0 ,
                            fontFamily: 'Gilroy' ,
                            fontWeight: FontWeight.normal ,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}