import 'package:get/get.dart';
import 'package:wallet_icp/Navbar/navbar.dart';
import 'package:wallet_icp/Page/Home.dart';
import 'package:wallet_icp/Page/Portfolio.dart';
import 'package:wallet_icp/Page/currency.dart';
import 'package:wallet_icp/Page/profile.dart';
import 'package:wallet_icp/Page/settings.dart';

class AppPage{
  static List<GetPage> routes=[
    GetPage(name: navbar, page: ()=>const Navbar()),
    GetPage(name: home, page: ()=>const Home()),
    GetPage(name: profile, page: ()=>const Profile()),
    GetPage(name: currency, page: ()=>const Currency()),
    GetPage(name: settings, page: ()=>const Settings()),
    GetPage(name: portfolio, page: ()=>const Portfolio()),
  ];
  static getnavabar()=>navbar;
  static gethome()=>home;
  static getcurrency()=>currency;
  static getportfolio()=>portfolio;
  static getnsettings()=>settings;
  static getprofile()=>profile;
  static String navbar="/";
  static String home="/home";
  static String currency="/currency";
  static String portfolio="/portfolio";
  static String settings="/settings";
  static String profile="/profile";

}