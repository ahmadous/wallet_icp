
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:wallet_icp/Controller/controller.dart';
import 'package:wallet_icp/Page/Home.dart';
import 'package:wallet_icp/Page/Portfolio.dart';
import 'package:wallet_icp/Page/currency.dart';
import 'package:wallet_icp/Page/profile.dart';
import 'package:wallet_icp/Page/settings.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final controller=Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<NavbarController>(builder: (context){
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              Home(),
              Portfolio(),
              Currency(),
              Settings(),
              Profile()
            ],
          ),
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
      });
    
  }
}

_bottomNavigationBar (IconData icon,String label){
  return BottomNavigationBarItem(icon: Icon(icon,),label: label);
}