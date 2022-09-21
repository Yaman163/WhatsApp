import 'package:flutter/material.dart';

class messages extends StatelessWidget {
  const messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerRight,
      child: ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width -45,
      ),
        child:Card(
          color:Color(0xffdcf8c6),
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 60,top: 10,bottom: 20),
                child: Text(" Hi Hi my friend ...",style: TextStyle(fontSize: 16),),
              ),
              Positioned(bottom: 4,right: 10,
                child: Row(
                  children: [
                    Text("22:34",style: TextStyle(fontSize: 13,color: Colors.grey),),
                    Icon(Icons.done_all,size: 19,),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );

  }
}

