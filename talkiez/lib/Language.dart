import 'package:flutter/material.dart';
import 'package:talkiez/Bloc.dart';
import 'VideoListView.dart';
import 'model.dart';

class Language extends StatefulWidget {
  var bloc = Bloc();
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(top: 40, right: 25),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "x",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                onTap: null,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 70),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "select video languages",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "see videos made in these languages",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: StreamBuilder<List<Data>>(
                        stream: widget.bloc.items ,
                        builder: (context, snapshot) {
                          return GridView.builder(
                            itemCount: snapshot.data.length,

                            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                            itemBuilder: (BuildContext context, int index) {
                              // Utf8Codec utf8 = Utf8Codec();
                              //var encoded=utf8.encode(data[index]["translation"]);
                              //var decoded=utf8.decode(encoded);
                              //print(data[index]['translation']);
                              //print(decoded);
                              var data = snapshot.data[index];


                              return new Card(

                                color: Colors.black,
                                child: GestureDetector(

                                  onTap: () {
                                    //print('clicked ${snapshot.data[index]['id']}');
                                    setState(() {
                                      data.isSelected = !data.isSelected;


                                    });
                                  },
                                  child: new GridTile(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          border:
                                          Border.all(color: Colors.grey, width: 0.4),
                                          borderRadius: BorderRadius.circular(8)),
                                      // alignment: Alignment.center,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              //alignment: Alignment.center,
                                              padding: const EdgeInsets.only(
                                                top: 30,
                                              ),
                                              child: new Text(data.value,
                                                style: TextStyle(color:data.isSelected ? Colors.red : Colors.white),
                                              ),
                                            ),
                                            Container(
                                              //alignment: Alignment.center,
                                              //padding: const EdgeInsets.all(10.0),
                                              child: new Text(data.translation,
                                                style: TextStyle(color:data.isSelected ? Colors.red : Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ), //just for testing, will fill with image later
                                  ),
                                ),
                              );
                            },
                          );
                        }
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: GestureDetector(
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VideoListView()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.4),
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 3.0, left: 4.0, bottom: 4),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
