import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/config/config_data.dart';
import 'package:getxproject/controller/public_controller.dart';

import 'naviagete_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller=TextEditingController();
  @override
  void initState() {
    super.initState();
    _initData();
  }

  Future<void> _initData()async{
    await Future.delayed(const Duration(milliseconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),

      body: GetBuilder<PublicController>(
        builder: (publicController) {
          if(publicController.size.value<=0.0) publicController.initApp(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text("${publicController.number}"),
              SizedBox(height: 20,),
              OutlinedButton(onPressed: (){
                publicController.increment();
              }, child: Text("ADD")),
              OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>NaviagetePages()));
              }, child: Text("Navigate")),
              SizedBox(height: 10,),
              TextField(
                controller: controller,

              ),
              OutlinedButton(onPressed: (){
                publicController.addList(controller.text);
                print(publicController.list);
              }, child: Text("add list")),
              SizedBox(height: 10,),

              Text("${publicController.list.value}"),

              SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: publicController.list.length,
                    itemBuilder: (context,index){
              final data=publicController.list[index];
                  return ListTile(
                    leading: Text("$data"),
                  );
                }),
              )


            ],
          );
        }
      ),
    );
  }
}
