import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/controller/public_controller.dart';

class NaviagetePages extends StatefulWidget {
  const NaviagetePages({super.key});

  @override
  State<NaviagetePages> createState() => _NaviagetePagesState();
}

class _NaviagetePagesState extends State<NaviagetePages> {

  List data=[];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("naviage page"),

      ),
      body: GetBuilder<PublicController>(
        builder: (pc) {
          data=  pc.list.where((name) => name == 'nazmul').map((name) => data.add(name)).toList();
          return Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Center(child: Text("${pc.number}"),),

                ElevatedButton(onPressed: (){



                }, child: Text("sorting")),
                SizedBox(height: 200,
                child: ListView.builder(
                    itemCount:5,
                    itemBuilder: (context,index){

p
                  return ListTile(

                    title: Text(data.toString()),
                  );
                }),)
              ],
            ),
          );
        }
      ),
    );
  }
}
