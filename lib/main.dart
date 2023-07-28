import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message/data.dart';

import 'package:message/second.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: message(),
  ));
}

class message extends StatefulWidget {
  const message({Key? key}) : super(key: key);

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sms collection"),
      ),
      body: ListView.builder(
        itemCount: mydata_of_.name.length,
        itemBuilder: (context, index) {
         return ListTile(onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
             return seconde(index);
           },));
         },
           title: Text(
             "${mydata_of_.name[index]}",
             style: TextStyle(color: Colors.blue),
           ),
           leading: Container(
             height: 50,
             width: 50,
             decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("img/shiv 2.jpg"))
             ),
           ),
         );
      },),
    );
  }
}
