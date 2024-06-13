import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_icp/Controller/controller.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final controller=Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.amber,
            unselectedItemColor: Colors.black45,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottomNavigationBar(Icons.home, "Home"),
              _bottomNavigationBar(Icons.payment, "Portfolio"),
              _bottomNavigationBar(Icons.currency_exchange, "Currency"),
              _bottomNavigationBar(Icons.settings, "settings"),
              _bottomNavigationBar(Icons.person, "profile"),
          ]),
    );
  }
}

_bottomNavigationBar (IconData icon,String label){
  return BottomNavigationBarItem(icon: Icon(icon,),label: label);
}