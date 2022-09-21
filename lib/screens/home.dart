import 'package:flutter/material.dart';
import 'package:untitled2/screens/status.dart';
import 'chats.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,initialIndex: 1, child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72),
        child: AppBar(
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              "whatsApp",
              style: TextStyle(fontSize: 20),),),
          actions: [
            Padding(padding: EdgeInsets.only(top: 11,right: 16),
              child: Icon(
                Icons.search,size: 27,),),
            PopupMenuButton(
              elevation: 10,
              padding: EdgeInsets.symmetric(vertical: 21),
              iconSize: 27,
              itemBuilder: (context)  =>[
                PopupMenuItem(
                  value: 1,
                  child: Text("New Group",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),),
                PopupMenuItem(value: 2,
                  child: Text("New Brodcast",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),),
                PopupMenuItem(value: 3,
                  child: Text("Linked Devices",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),),
                PopupMenuItem(value: 4,
                  child: Text("Starred Massages",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),),
                PopupMenuItem(value: 5,
                  child: Text("Settings",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,),),
                ),],
            ),],
        ),),
      body: Column(children: [
        Container(
          color:Color(0xFF075E55),
          child: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),
            tabs: [
              Container(width: 105,child: Tab
                (icon:Icon( Icons.camera_alt),
             ),
              ),
        Container(
          width: 90,
          child: Tab(
            child: Row(children: [
              Text("Chats"),
              SizedBox(width: 7,),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("14",style: TextStyle(color: Color(0xFF075E55),fontSize: 15,),
                ),
              ),
            ],
            ),
          ),
        ),
        Container(width: 88,child: Tab(child: Text("Status"),),),
        Container(width: 88,child: Tab(child: Text("Calls"),),),
      ],
      ),
     ),
        Flexible(flex: 1,
        child: TabBarView(
          children: [
            Container(color: Colors.black,),

             chats(),

            status(),

            Container(color: Colors.black,),
          ],
         ),
        ),
       ],
       ),
     ),
    );
  }
}
