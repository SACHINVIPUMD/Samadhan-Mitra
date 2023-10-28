import 'package:flutter/material.dart';

class DashboardAdv extends StatelessWidget {
  const DashboardAdv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 54.0, left: 24.0, bottom: 22.0),
              child: BackButton(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 24.0, bottom: 22.0),
              child: Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: const Color(0xFFF8F9FE),
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/icon/advProfile.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(children: [
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  )],),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Text(
                                      'Mr Rajendran ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        color: Color(0xFF3B3DCC),
                                      ),
                                    ),
                                    Image.asset('assets/icon/rightArrow.png'),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Service : Advocate',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Experience : 7 Years' ,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: const Color(0xFFF8F9FE),
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/icon/advProfile1.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(children: [
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  )],),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Text(
                                      'Mr Sachin ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        color: Color(0xFF3B3DCC),
                                      ),
                                    ),
                                    Image.asset('assets/icon/rightArrow.png'),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Service : Advocate',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Experience : 11 Years' ,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: const Color(0xFFF8F9FE),
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/icon/advProfile2.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(children: [
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  )],),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Text(
                                      'Mr Sofia ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        color: Color(0xFF3B3DCC),
                                      ),
                                    ),
                                    Image.asset('assets/icon/rightArrow.png'),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Service : Advocate',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Experience : 5 Years' ,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                color: const Color(0xFFF8F9FE),
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.all(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('assets/icon/advProfile3.png'),
                              ),
                              Container(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(children: [
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  ),
                                  Container(
                                    child: Image.asset('assets/icon/Star.png'),
                                    width: 17.600000381469727,
                                    height: 14.91090202331543,
                                  )],),
                              )
                            ],
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Text(
                                      'Mr Prasanth ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gilroy',
                                        color: Color(0xFF3B3DCC),
                                      ),
                                    ),
                                    Image.asset('assets/icon/rightArrow.png'),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Service : Advocate',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Experience : 2 Years' ,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF6E7191),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}