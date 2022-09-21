import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/screens/replymessage.dart';

import 'messages.dart';




class chat extends StatelessWidget {
  const chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10,left: 6),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,size: 24,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset("images/yaman.png",height: 45,width: 45,),
                ),
                Padding(padding: EdgeInsets.only(left: 10),
                child:Column(
                  children: [
                    Text("yaman",style: TextStyle(fontSize: 17),),
                       SizedBox(height: 6,),
                  Text(
                  "Online",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  ),
                  ],
                 ),
               ),
              ],
            ),
          ),
          actions: [
            Padding(padding: EdgeInsets.only(top: 10,right: 25,),
            child: Icon ( CupertinoIcons.video_camera_solid,size:29,),
            ),
            Padding(padding: EdgeInsets.only(top: 10,right: 20,),
              child: Icon ( Icons.call,size:29,),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
                children:[
                  messages(),
                  replymessage(),
                  messages(),
                  replymessage(),
                ],
            ),
            Align(alignment: Alignment.bottomCenter,
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width -60,
                child: Card(
                  margin: EdgeInsets.only(left: 2,right: 2,bottom: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.multiline,
                    maxLength: 5,
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: "Type a Massage",
                      prefixIcon: IconButton(
                        icon: Icon(Icons.emoji_emotions,color:Color(0xFF128C7E)),
                        onPressed: () {},
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.attach_file,color:Color(0xFF128C7E)), onPressed: () { },
                          ),
                          IconButton(
                            icon: Icon(Icons.camera_alt,color:Color(0xFF128C7E)), onPressed: () { },
                          ),
                        ],
                      ),
                      contentPadding: EdgeInsets.all(5)
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 8,right: 5,left: 2),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFF128C7E),
                child: IconButton(icon: Icon(Icons.mic,color: Colors.white,), onPressed: () { },),
              ),)
            ],),)
          ],
        ),
      ),

       );
  }
}
