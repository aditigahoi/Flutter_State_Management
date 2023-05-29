import 'package:get/get.dart';

// ignore: camel_case_types
class myController extends GetxController{
  var Books =0.obs;
  var Pencil=0.obs;

  increment(){
    Books.value++;
  }
  decrement(){
    Books.value--;
  }
  Pen_increment(){
    Pencil.value++;
  }
  Pen_decrement(){
    Pencil.value--;
  }
}