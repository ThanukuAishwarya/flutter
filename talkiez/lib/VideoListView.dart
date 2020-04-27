import 'package:flutter/material.dart';
import 'package:talkiez/Bloc.dart';
import 'package:talkiez/VideoModel.dart';
import 'package:video_player/video_player.dart';

class VideoListView extends StatefulWidget {
  var bloc = Bloc();
  @override
  _VideoListViewState createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  VideoPlayerController playerController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: VideoPlayer(playerController),
            /*Column(
              children: <Widget>[
                Expanded(
                  child: StreamBuilder<List<Azure>>(
                      stream: widget.bloc.itemsSubjectVideo,
                      builder: (context,snapshot){
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index){
                              Container(
                                  child: Text(snapshot.data[index].videoName,style: TextStyle(color: Colors.red),)
                              );
                            });
                      }),
                )
              ],
            )*/
             ),
        ),
      );
  }
  @override
  void initState() {
    super.initState();
    if (playerController == null) {
      playerController =
      VideoPlayerController.asset("assets/talkiezsample.mp4");
      playerController.initialize();
      playerController.play();
       /* ..addListener(() {
          if (playerController!=null && playerController.value!=null && playerController.value.initialized) {
            Duration duration = playerController.value.duration;
            Duration position = playerController.value.position;
          }
        })
        ..setVolume(1.0)
        ..initialize()
        ..play();*/


    }
  }
}
