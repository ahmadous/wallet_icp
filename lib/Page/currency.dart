import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_icp/Controller/controller.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {

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