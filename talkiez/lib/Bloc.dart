import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rxdart/subjects.dart';
import 'package:talkiez/VideoModel.dart';

import 'model.dart';

class Bloc {

/*  final info = ModelOfLang();*/
  /*Sink<List<Data>> get addition => additionController.sink;

  final additionController = StreamController<List<Data>>();*/

  Stream<List<Data>> get items => itemsSubject.stream;

  final BehaviorSubject<List<Data>> itemsSubject =  BehaviorSubject<List<Data>>.seeded([]);

  Stream<List<Azure>> get videosListItems => itemsSubjectVideo.stream;

  final BehaviorSubject<List<Azure>> itemsSubjectVideo =  BehaviorSubject<List<Azure>>.seeded([]);

  Bloc() {
    getData();
    getVideoListData();
  }

  getData() async{
    var data = await http.get("https://api.bzinga.com/api/v1/content/languages");
    var jsonData = json.decode(data.body);

    List<Data> datain = [];
    for (var u in jsonData["data"]){
      Data data = Data(u['id'],u['key'],u['value'],u['translation']);
      datain.add(data);
    }
    itemsSubject.add(datain);
  }
  getVideoListData() async{
    var data = await http.get("https://rkgsgs3efd.execute-api.ap-south-1.amazonaws.com/prod/api/v1/list");
    var jsonData = json.decode(data.body);

    List<Azure> videodata = [] ;
    for (var u in jsonData["videosList"]["azure"]){
      Azure data = Azure(u['id'],u['video_name'],u['video_link'],u['cf_link'],u['cloudprov'],u['first_image_url'],u['first_image_cf_url'],u['image_order'],u['hls_file_url'],u['hls_file_cdn_url']);
      videodata.add(data);
    }
    itemsSubjectVideo.add(videodata);
  }
}