import 'package:flutter/material.dart';


class replymessage extends StatelessWidget {
  const replymessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,
      child: ConstrainedBox(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width -45,
      ),
        child:Card(
          color:Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 60,top: 10,bottom: 20),
                child: Text(" oh what a long time age we have not communicated how are you bro ?...",style: TextStyle(fontSize: 16),),
              ),
              Positioned(bottom: 4,right: 10,
                child: Row(
                  children: [
                    Text("22:34",style: TextStyle(fontSize: 13,color: Colors.grey),),

                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );;
  }
}
