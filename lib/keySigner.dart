import 'package:flutter/material.dart';

class KeySigner extends StatefulWidget {
  const KeySigner({super.key});

  @override
  State<KeySigner> createState() => _KeySignerState();
}

class _KeySignerState extends State<KeySigner> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class KeySignerState extends State<KeySigner> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                  'assets/icon/keysigner.png',
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
                  decoration: InputDecoration(
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
                      onPressed: (

                      ){},
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
                    children:  const [
                      Text(
                        "Don't have an account?" ,
                        style: TextStyle(
                          color: Colors.grey ,
                          fontSize: 12.0 ,
                          fontFamily: 'Gilroy' ,
                          fontWeight: FontWeight.normal ,
                        ),
                      ) ,
                      SizedBox(width: 2.5) ,
                      InkWell(

                        child: Text(
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

