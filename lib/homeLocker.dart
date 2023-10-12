import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeLocker extends StatelessWidget {
  const HomeLocker({Key? key}) : super(key: key);
  void home() {

  }
  void search() {

  }
  void locker() {

  }
  void pending() {

  }
  void profile() {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24.0 , top: 12.0) ,
                    child: IconButton(onPressed: home, icon: SvgPicture.asset('assets/icon/home-icon.svg')),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0 , top: 12.0) ,
                    child: IconButton(onPressed: search, icon: SvgPicture.asset('assets/icon/search-icon.svg')),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0 , top: 12.0) ,
                    child: IconButton(onPressed: locker, icon: SvgPicture.asset('assets/icon/filelock-active.svg')),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0 , top: 12.0) ,
                    child: IconButton(onPressed: pending, icon: SvgPicture.asset('assets/icon/clock-icon.svg')),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 24.0 , top: 12.0) ,
                    child: IconButton(onPressed: profile, icon: SvgPicture.asset('assets/icon/profile-icon.svg')),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
