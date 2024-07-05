import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'urlConfig.dart';
import 'main.dart';
import 'dashboard.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  bool _showPassword = false;

  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _passtogle() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void termsCondition() {

  }

  void Ppolicy() {

  }

  void validate() async {
    if(_unameController.text.isNotEmpty && _phoneController.text.isNotEmpty && _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      var regBody = {
        "userName" : _unameController.text ,
        "email" : _emailController.text ,
        "phoneNo" : _phoneController.text ,
        "password" : _passwordController.text
      };
      var res = await http.post(Uri.parse(reg) ,
      headers: {"Content-Type" : "application/json"},
      body : jsonEncode(regBody)
      );
      var jsonres = jsonDecode(res.body);
      if(jsonres['status']) {
        var Otpreq = {
          "email" : _emailController.text
        };
        var resOTP = await http.post(Uri.parse(sendOTP) ,
            headers: {"Content-Type" : "application/json"},
            body : jsonEncode(Otpreq)
        );
        var OtpRes = jsonDecode(resOTP.body);
        if(OtpRes['status']) {
          Navigator.pushNamed(context, '/otp');
        }
      }
      else {
        return;
      }
    }
    else {
      return;
    }
  }

  void navigate() {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 54.0, left: 24.0, bottom: 22.0),
              child: BackButton(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 24.0, bottom: 22.0),
              child: Text(
                'Signup',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              child: const Text(
                'User Name',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding:
              const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _unameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                    const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your User Name',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0 , top: 18.0),
              child: const Text(
                'Phone',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            Container(
              padding:
              const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                    const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Phone Number',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0 , top: 18.0),
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
              padding:
                  const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your E-mail',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0, top: 18.0),
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
              padding:
                  const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
              child: TextFormField(
                controller: _passwordController,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    padding: const EdgeInsetsDirectional.only(end: 12.0),
                    icon: _showPassword
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: _passtogle,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(width: 10.0, color: Colors.grey),
                  ),
                  hintText: 'Your Password',
                  hintStyle: const TextStyle(
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 18.0 , left: 24.0),
              child: Row(
              children:  [
                const Text(
                    'By signing up you agree to our ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    fontFamily: 'Gilroy',
                  )
                ),
                InkWell(
                  onTap: () {
                    termsCondition();
                  },
                  child: const Text(
                    'Terms & Condition' ,
                    style: TextStyle(
                      fontFamily: 'Gilroy' ,
                      fontSize: 14.0 ,
                      fontWeight: FontWeight.bold ,
                    ),
                  ),
                ),
                const Text(
                  ' and ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    fontFamily: 'Gilroy',
                    )
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 9.0, left: 24.0),
              child: InkWell(
                onTap: () {
                  Ppolicy();
                },
                child: const Text(
                  'Privacy Policy.*',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    fontFamily: 'Gilroy',
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 1,
                    ),
                    child: const Text(
                      'Signup',
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
                      "Already signed up?" ,
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
                        ''
                            'login' ,
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
      ),
    );
  }
}
