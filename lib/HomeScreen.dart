
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myController.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final myController _cartController = Get.put(myController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        Container(
      padding: const EdgeInsets.all(35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                "Books",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              Expanded(child: Container()),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: Icon(Icons.remove, color: Colors.white),
                  onPressed: () {
                    _cartController.decrement();
                  },
                ),
              ),
              SizedBox(width: 20),
             Obx(() => Text("${_cartController.Books.toString()}",
               style: TextStyle(fontSize: 25),)),
              SizedBox(width: 20),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: Icon(Icons.add, color: Colors.white),
                  onPressed: () {
                    _cartController.increment();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              const Text(
                "Pencil",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              Expanded(child: Container()),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: Icon(Icons.remove, color: Colors.white),
                  onPressed: () {
                    _cartController.Pen_decrement();
                  },
                ),
              ),
              SizedBox(width: 20),
               Obx(() => Text("${_cartController.Pencil.toString()}",
               style: TextStyle(fontSize: 25),)),
              SizedBox(width: 20),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent),
                child: IconButton(
                  icon: Icon(Icons.add, color: Colors.white),
                  onPressed: () {
                    _cartController.Pen_increment();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    )
    );
  }
}
