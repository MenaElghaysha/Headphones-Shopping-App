import 'package:flutter/material.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {

  int state=0;
  int x=0;
  bool _selectOn = false;
  bool _selectOn2 = false;
  bool _selectOn3 = false;
  bool _selectOn4 = false;
  bool _selectOn5 = false;

  void selection(int state){
    if(state ==1 ){
      _selectOn= true;
      _selectOn2 = false;
      _selectOn3 = false;
      _selectOn4 = false;
      x=1;

    }
    else if(state == 2){
      _selectOn2= true;
    _selectOn = false;
    _selectOn3 = false;
    _selectOn4 = false;
    x=2;

    }
    else if(state ==3 ){
      _selectOn3= true;
      _selectOn = false;
      _selectOn2 = false;
      _selectOn4 = false;

    }else if(state == 4){
      _selectOn4= true;
      _selectOn = false;
      _selectOn3 = false;
      _selectOn2 = false;

    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:Scaffold(

        body:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Column(

                  children: [
                    Divider(height: 45,),
                    // back button
                    Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!, width: 2.0),
                        borderRadius: BorderRadius.circular(10)
                        //color: Colors.greenAccent,
                         //shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        //borderRadius: BorderRadius.circular(500.0),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_back,
                            size: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                      Divider(height: 30,),
                    GestureDetector(
                      onTap: ( ) {
                        setState(() {
                          // Toggle border when tapped.
                          selection(1);
                          _selectOn = true;
                          x=1;

                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10,right:20,left: 20,bottom: 10),

                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          border: Border.all(color:  _selectOn  ? Colors.red : Colors.grey[300]!,width: 3),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: Image.asset( 'assets/1.jpg' ),
                      ),
                    ),

                    GestureDetector(

                      onTap: () {
                        setState(() {
                          selection(2);
                          _selectOn2 = true;
                          x=2;
                          // Toggle border when tapped.
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10,right:20,left: 20,bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          border: Border.all(color:  _selectOn2  ? Colors.red : Colors.grey[300]!,width: 3),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: Image.asset( 'assets/2.jpg' ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle border when tapped.
                          selection(3);
                            _selectOn3 = true;
                            x=3;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10,right:20,left: 20,bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          border: Border.all(color:  _selectOn3 ? Colors.red : Colors.grey[300]!,width: 3),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: Image.asset( 'assets/3.jpg' ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle border when tapped.
                          selection(4);
                           _selectOn4 = true;
                             x=4;
                        }

                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10,right:20,left: 20,bottom: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          border: Border.all(color:  _selectOn4 ? Colors.red : Colors.grey[300]!,width: 3),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: Image.asset( 'assets/4.jpg' ),
                      ),
                    ),


                  ],),

                Stack(
                  children:[
                    Container(
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.only(top: 100,right: 20,bottom: 30,left: 30),
                    width: 300,
                    height: 420,
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                        // boxShadow :const [
                        //   BoxShadow(color:Colors.grey,
                        //       blurRadius:10,
                        //       spreadRadius:10,
                        //       offset:Offset(10,0)),
                        // ],
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))

                    ),
                    child: Image.asset(x == 1 ? 'assets/13.png': (x==2 ?'assets/23.png':(x==3?'assets/33.png' : 'assets/43.png')),),
                       // ? 'assets/2.jpg':x== 3 as String ? 'assets/3.jpg' :x==4 as String?'assets/4.jpg':x==0
                  ),



                    Container(
                      margin: EdgeInsets.only(top: 60,left: 230,right: 10,bottom: 300),
                      width: 50,
                      height: 50,
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[300]!,width: 2),
                        ),

                      child:
                      IconButton(
                        icon: Icon(Icons.favorite_rounded,color: _selectOn5 ? Colors.red : Colors.black,),
                        onPressed: () {
                          setState(() {
                            _selectOn5=!_selectOn5;
                          });
                        },
                      ),
                    )

                  ]),
              ],),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Sony WH-1000XM4',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                      Ink(
                        height: 28,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[200]!,width: 3),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star , color: Colors.amber,size: 18,),
                            Text('4.9',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(color: Colors.white,),
                  const Text('Wireless Over-ear Industry Leading Noise Canceling'
                      ' Headphones with Microphone ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                  Divider(color: Colors.white),
                  Column(
                    children: [
                        ListTile(
                            leading: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red[50]
                              ),
                              child: Icon(Icons.article_outlined,size: 26 ,color: Colors.red[300]!,),),
                            onTap: (){},
                            title: Text('Product Specifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                            trailing: Icon(Icons.arrow_forward_ios,color:Colors.black ,size: 22,),
                          ),


                      Divider(thickness: 2,color:Colors.grey[200] ,),


                      ListTile(
                        leading: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red[50]
                          ),
                          child: Icon(Icons.color_lens_outlined,size: 26 ,color: Colors.red[300]!,),),
                        onTap: (){},
                        title: const Text('Colors',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                        trailing: Container(
                          width: 100,
                          height: 90,
                          //color: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(radius: 12,child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    border: Border.all(color: Colors.red,width: 1.5),
                                    borderRadius: BorderRadius.circular(50)

                                ),
                              ),), CircleAvatar(radius: 12,child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    border: Border.all(color: Colors.grey[300]!,width: 1.5),
                                    borderRadius: BorderRadius.circular(50)

                                ),
                              ),), CircleAvatar(radius: 12,child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    border: Border.all(color: Colors.grey[300]!,width: 1.5),
                                    borderRadius: BorderRadius.circular(50)

                                ),
                              ),),

                            ],
                          ),
                        ),
                        ),

                      Divider(color: Colors.white,height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           RichText(
                              text: TextSpan(text: '\$349',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25,color: Colors.black),

                                children: <TextSpan>[
                                  TextSpan(text: '.99', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.5, color: Colors.black, fontStyle: FontStyle.italic)),


                                ]),

                            ),
                             VerticalDivider(),
                             ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(

                                  backgroundColor: Colors.red[600],
                                  padding: const EdgeInsets.symmetric(horizontal:32,vertical: 13),
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                                  elevation:5,
                                  shadowColor: Colors.red,
                                  textStyle: const TextStyle(fontSize:18,fontWeight:FontWeight.normal),
                                  ),
                                  onPressed:(){
                                  },
                              label:  Icon(Icons.arrow_forward_ios,color: Colors.grey[200],size: 20,),

                               icon:  Text('Add To Cart',style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.w500),),


                            ),
                        ],
                      ),

                  ],
              ),
                ],
              ),
            ),
          ],),
      ),
    );
  }

}



