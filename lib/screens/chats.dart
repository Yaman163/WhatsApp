import 'package:flutter/material.dart';


class chats extends StatelessWidget {
  const chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 6,
        ),
        child: Column(children: [
          for(int i=1;i<11;i++)
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "chat");
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset("images/yaman.png", height: 60, width: 60,),
                  ),
                  Padding(padding: EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("yaman",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,),),
                      SizedBox(height: 17,),
                      Text("sorry i forgot that.... i hope i can do it someday ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54,),),
                    ],
                  ),
                  ),
                    Spacer(),
                    Container(alignment: Alignment.center,width: 28,height: 28,
                      decoration: BoxDecoration(color: Color(0xFF0FCE5E),
                      borderRadius: BorderRadius.circular(21),),
                      child: Text("2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                    )
                ],
              ),
            ),
          )
        ],),
      ),
    );
  }
}
