
import 'package:get/get.dart';

class NavbarController  extends GetxController{
  var tabIndex=0;
  void changeTabIndex(int index){
    tabIndex=index;
    update();
  }
}
class myController extends GetxController{
  var coin="USD".obs;
  var price="2,200.00".obs;
  void change(value){
    coin.value=value;
    update();
  }
}

