import 'package:flutter/material.dart';
import 'package:untitled2/screens/LoginPage.dart';


class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
       height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(
          children:
          [
            SizedBox(height: 50,),
            Text(" Welcome to whatsApp",style: TextStyle(fontSize:29,color:Colors.teal,fontWeight: FontWeight.w600,),
          ),
            SizedBox(height:50,),
           Image.asset("images/wel.png",height: 350,width: 350,),
            SizedBox(height: 40,),
            Column(
              children: [
                Text("Agree and continue to acceppt the Terms of service",
                  textAlign: TextAlign.center,style: TextStyle(fontSize:15,color: Colors.grey[600]
                ),),
                Text("WhatsApp Terms of Serviec and Privecy Policy  ",
                  textAlign: TextAlign.center,style: TextStyle(fontSize:15,color: Colors.cyan
                  ),),
                SizedBox(height: 40,),
                MaterialButton(
                  color:Colors.green,
                  onPressed:() {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=> loginpage()), (route) => false);
                  },
                child: Text("AGREE AND CONTTUNE",style: TextStyle(fontSize: 18,color: Colors.white),),
                )
              ],
            ),
          ],

        ),
      ),

    );
  }
}
