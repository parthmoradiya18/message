import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:message/data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
class three extends StatefulWidget {
  int index;
  int index2;
  List s=[];
  three(this.index, this.s, this.index2);

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  PageController controller = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: widget.index2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${mydata_of_.name[widget.index]}"),
      ),
      body: Column(
        children: [
          Expanded(flex: 5,
              child: Row(
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: widget.s.length,
                      onPageChanged:(value) {
                        widget.index2 = value;
                        setState(() {});
                      },
                      controller: controller,
                      itemBuilder: (context, index2) {
                      return  Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: double.infinity,
                        margin: EdgeInsets.all(10),
                        color: Colors.pink,
                        child: Text("${widget.s[widget.index2]}",style: TextStyle(fontSize: 20),),
                      );
                    },)
                  )
                ],
              )),
          Spacer(),
          Spacer(),
          Spacer(),
          Expanded(
              child: Row(
                children: [
                    Expanded(
                      child: Container(margin: EdgeInsets.all(10),
                        color: Colors.green,
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    if (widget.index2 > 0) {
                                      widget.index2--;
                                      controller.jumpToPage(widget.index2);
                                      setState(() {});
                                    }
                                  },
                                icon: Icon(Icons.arrow_back_ios),
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  Share.share("${widget.s[widget.index2]}");
                                },
                                icon: Icon(Icons.share),
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  FlutterClipboard.copy("${widget.s[widget.index2]}").then((value){
                                    Fluttertoast.showToast(
                                        msg: "copy",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.pink,
                                        textColor: Colors.black,
                                        fontSize: 16.0);
                                  });
                                  setState(() {

                                  });
                                }, icon: Icon(Icons.copy_all),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  if (widget.index2 < widget.s.length - 1) {
                                    widget.index2++;
                                    controller.jumpToPage(widget.index2);
                                    setState(() {});
                                  }
                                },
                                icon: Icon(Icons.arrow_forward_ios_rounded),
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              )),
          Spacer(),
        ],
      ),
    );
  }
}
