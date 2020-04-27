import 'package:flutter/material.dart';
import 'package:talkiez/Bloc.dart';
import 'package:talkiez/Language.dart';
import 'package:talkiez/InterestsModel.dart';
import 'VideoListView.dart';
import 'model.dart';

class Interests extends StatefulWidget {
  InterestsInterface interestslist;
  var bloc = Bloc();

  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
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
                    "skip",
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
                  "Choose your interests & get personalised videos.",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ListView.builder(
                  itemCount: widget.interestslist.listofinterests.length,
                  itemBuilder: (context, index) {
                    var data = widget.interestslist.listofinterests[index];
                    bool selected=false;
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.grey, width: 0.4),
                          borderRadius: BorderRadius.circular(8)),
                      // alignment: Alignment.center,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              //alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: new Text(
                                data.NameofInterest,
                                style: TextStyle(
                                    color:
                                        selected ? Colors.red : Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),

          /* StreamBuilder<List<Data>>(
                        stream: widget.bloc.items ,
                        builder: (context, snapshot) {
                          return GridView.builder(
                            itemCount: snapshot.data.length,

                            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                            itemBuilder: (BuildContext context, int index) {

                              var data = snapshot.data[index];
                              bool selected=false;

                              return new Card(

                                color: Colors.black,
                                child: GestureDetector(

                                  onTap: () {
                                    //print('clicked ${snapshot.data[index]['id']}');
                                    setState(() {
                                      selected = !selected;

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
                                                top: 10,
                                              ),
                                              child: new Text(data.value,
                                                style: TextStyle(color:selected ? Colors.red : Colors.white),
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
                    ),*/

          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Language()),
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
