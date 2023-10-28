import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  OtpState createState() => OtpState();
}

class OtpState extends State<Otp> {
  final TextEditingController _otpController = TextEditingController();
  void resend() {
    if(_otpController.text == "555555") {
      Navigator.pushNamed(context, '/dashboard');
    }
    else {
      return;
    }
  }

  final defaultPinTheme = PinTheme(
    width: 47,
    height: 65,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color(0xFF312E49),
    ),
    decoration: BoxDecoration(
      color: const Color(0xfff5f6f7),
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: const Color(0xffcdced1)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 64.0, left: 24.0, bottom: 22.0),
              child: Text(
                'Check your OTP',
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
                'We have sent you a 6-digit confirmation code to',
                style: TextStyle(
                  fontFamily: 'Gilroy-black',
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24.0),
              child: const Text(
                '**91. Make sure you enter the correct code.',
                style: TextStyle(
                  fontFamily: 'Gilroy-black',
                  fontSize: 16.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0 , vertical: 70.0),
              child: Pinput(
                controller: _otpController,
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                onCompleted: (pin) {

                  debugPrint(pin);
                },
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
                    onPressed: resend,
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF01B399),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      elevation: 1,
                    ),
                    child: const Text(
                      'Verify',
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
              padding: const EdgeInsets.only(top: 360.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children:  [
                    const Text(
                      "Don't receive code?" ,
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
                      },
                      child: const Text(
                        'Resend code' ,
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