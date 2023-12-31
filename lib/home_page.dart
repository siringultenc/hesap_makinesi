import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  
  void doAddition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  
  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2 ;
    });
  }

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2 ;
    });
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2 ;
    });
  }

  void doClear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
             TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
             TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),


             Padding(
                padding:EdgeInsets.only(top: 20.0),
            ),

             Expanded(
               child: Container(
                 child: 
                 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                         ElevatedButton(
                           child: Text("+"),
                           style: ElevatedButton.styleFrom(color: Colors.red),
                           onPressed: doAddition,
                         ),
                       ],
                     ),

                     Padding(
                       padding: EdgeInsets.only(top: 20.0),
                     ),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         MaterialButton(
                           child: Text("-"),
                           color: Colors.greenAccent,
                           onPressed: doSub,
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
             ),


            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        MaterialButton(
                          child: Text("x"),
                          color: Colors.greenAccent,
                          onPressed: doMul,
                        ),
                      ],
                    ),


                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        MaterialButton(
                          child: Text("~/"),
                          color: Colors.greenAccent,
                          onPressed: doDiv,
                        ),
                      ],
                    ),
                  ],

                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

