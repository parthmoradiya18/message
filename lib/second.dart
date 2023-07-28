import 'package:flutter/material.dart';
import 'package:message/data.dart';

import 'package:message/three.dart';

class seconde extends StatefulWidget {

  int index;
  seconde(this.index);

  @override
  State<seconde> createState() => _secondeState();
}

class _secondeState extends State<seconde> {
  List s=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //temp = List.filled(data.name.length, false);
    if(widget.index==0)
    {
      s=mydata_of_.Good_Morning;
    }
    else if(widget.index==1)
    {
      s=mydata_of_.Good_Night;
    }
    else if(widget.index==2)
    {
      s=mydata_of_.Exam_Sms;
    }
    else if(widget.index==3)
    {
      s=mydata_of_.wife;
    }
    else if(widget.index==4)
    {
      s=mydata_of_.Missu_Sms;
    }
    else if(widget.index==5)
    {
      s=mydata_of_.Romantic_Sms;
    }
    else if(widget.index==6)
    {
      s=mydata_of_.Jokes_Sms;
    }
    else if(widget.index==7)
    {
    s=mydata_of_.take;
    }
    else if(widget.index==8)
    {
    s=mydata_of_.rose;
    }
    else if(widget.index==9)
    {
    s=mydata_of_.holi;
    }
    else if(widget.index==10)
    {
    s=mydata_of_.funny;
    }
    else if(widget.index==11)
    {
    s=mydata_of_.Kiss_Sms;
    }
    else
    {
    s=mydata_of_.sorry_Sms;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${mydata_of_.name[widget.index]}"),
      ),
      body: ListView.separated(
        itemCount: s.length,
        itemBuilder: (context, index2) {
          return Card(
            margin: EdgeInsets.all(5),
            color: Colors.grey,
            child: ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return three(widget.index,s,index2);
                },));
              },
              title: Text(
                "${s[index2]}",
                style: TextStyle(color: Colors.blue),
              ),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("img/shiv 2.jpg"))
                ),
              ),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
         return Divider(
            height: 10,
            thickness: 5,
            color: Colors.red,
          );
      },),
    );
  }
}
