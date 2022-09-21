import 'package:flutter/material.dart';



class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
        children: [
          Container (
         margin: EdgeInsets.symmetric(vertical: 12),
       child: Row(
       children: [
       Container (
    padding: EdgeInsets.all(1.5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(38) ,
      border: Border.all(color: Colors.grey,width: 3),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(38) ,
    child: Image.asset("images/yaman.png",height: 55,width: 55,fit: BoxFit.cover,),
    ),
    ),
         Padding(padding: EdgeInsets.only(left: 21),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("My Status",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,),),
             SizedBox(height: 7,),
             Text("yesterday at 2:25 Am",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),),
           ],
         ),),
        Spacer() ,
         Container(
           child: Icon(Icons.more_vert,color: Color(0xFF0FCE5E)),
         )
    ],
    ),
    ),
          SizedBox(height: 10,),
          Container(alignment: Alignment.centerLeft,
            child:
            Text("Recent Updates",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),),
          ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 12), child: Row( children: [
        Container ( padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular (40),
              border: Border.all(color: Colors.blue, width: 3),
        ),
             child: ClipRRect(
               borderRadius: BorderRadius.circular (48),
               child: Image.asset ("images/Roty.png", height: 55, width: 55, fit: BoxFit.cover, ),
        ),
        ),

          Padding ( padding: EdgeInsets.only(left: 20),
       child: Column (
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Roty",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      Text("Today at 2:55 Pm",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Colors.black54,),),
       ],
       ),
       ),
       ],
      ),
      ),
      ],
      ),
      ),
     );
  }
}
