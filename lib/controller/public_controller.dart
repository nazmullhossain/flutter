import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class PublicController extends GetxController{
  static PublicController pc = Get.find();
  RxDouble size = 0.0.obs;
  RxInt number=0.obs;
  RxList list=[].obs;



  addList(x){
    list.add(x);
    update();
  }


  increment(){
    number++;
    update();
  }


  Future<void> initApp(BuildContext context) async {

    if (MediaQuery.of(context).size.width<500) {
      size.value=MediaQuery.of(context).size.width;
    } else {size(MediaQuery.of(context).size.height);}
    update();
    if (kDebugMode) {
      print('Initialized\n Size: ${size.value}');
    }
  }

}