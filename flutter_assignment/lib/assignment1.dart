import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class assignment1 extends StatefulWidget {
  @override
  _assignment1State createState() => _assignment1State();
}

class _assignment1State extends State<assignment1> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor:(Colors.transparent),
            elevation: 0.0,
            leading: Icon(Icons.subject, color: Colors.black, size: 35,),
            actions: <Widget>[
              Icon(Icons.search, color: Colors.black, size: 35,),
              Icon(Icons.bookmark_border, color: Colors.black,size: 35,),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
               Text('Book store', style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Text('Design',style: TextStyle(fontSize: 20),),
                     Text('Detective',style: TextStyle(fontSize: 20),),
                     Text('Scientific',style: TextStyle(fontSize: 20),),
                   ],
                 ),
               ),
               option(),
               option(),
               option(),
        ],
      ),
          ),
    );
  }
}

Widget option(){
  return Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), 
                ),
                  child: Container(
                    
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Image.asset('images/assets/img1.jpg', width: 100,height: 200,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Row(
                                children: <Widget>[
                                   Container(
                                    // margin: EdgeInsets.fromLTRB(0, 0, 150, 15),
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)), // set rounded corner radius
                                      // boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))]// make rounded corner of border
                                    ),
                                    child: Text("UX", style: TextStyle(color: Colors.white,fontSize: 12),),
                                  ),
                                  Icon(Icons.keyboard_arrow_right),
                                ],
                              ),
                            ),
                            Text("Design Thinking",style: TextStyle(fontSize: 20,),),
                            Text('data'),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(
                                children: <Widget>[
                                  new LinearPercentIndicator(
                                    width: 200.0,
                                    lineHeight: 8.0,
                                    percent: 0.5,
                                    progressColor: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
  );
}
