import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  TextEditingController _controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Enter Your Phone Number",
        style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w700,fontSize: 18,wordSpacing: 1),),
        centerTitle: true,
        actions: [
        Icon(Icons.more_vert,color: Colors.black,)
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text("Whatsapp will send an sms message to verift your number",style: TextStyle(fontSize: 13),
          ),
          SizedBox(height: 5,),
          Text("what is my number ?",style: TextStyle(fontSize: 12,color: Colors.cyan[800]),
          ),
          SizedBox(height: 19,),
         Container(
           width: MediaQuery.of(context).size.width /1.8,
           height: 38,
           padding: EdgeInsets.symmetric(vertical: 5),
           decoration: BoxDecoration(
             border: Border(bottom:BorderSide(color: Colors.teal,width: 1.6) )
           ),
          child: Row(
            children: [
              Text("Iraq"),
              Icon(Icons.arrow_drop_down,color: Colors.teal,)
            ],
          ),
         ),
          Container(
            width: MediaQuery.of(context).size.width /1.8,
            height: 33,
            padding: EdgeInsets.symmetric(vertical: 7,),
            child:Row(
              children:[
              Container(
                width:70,
            decoration: BoxDecoration(
              border: Border(bottom:BorderSide(color: Colors.teal,width: 1.6),),
                ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("+964"
                  ),
                ],
              ),
            ),
                SizedBox(width: 15,),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom:BorderSide(color: Colors.teal,width: 1.6),),
                  ),
                  width: MediaQuery.of(context).size.width /1.5 - 145,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(13),
                        hintText: "phone Number"
                    ),
                  ),
                ),
            ],
          ),
          ),

          // Expanded(child: Container()),
          SizedBox(height: 360,),
          Container(
            color: Colors.tealAccent[400],
            height: 40,
            width: 70,
            child: Center(
              child:Text(
                "Next",style:TextStyle(fontWeight: FontWeight.w600),
              ) ,
            ),
          ),
        ],
      ),
      ),

    );
  }
}
