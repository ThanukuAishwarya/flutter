
class InterestsModel{
  String NameofInterest;
  InterestsModel(this.NameofInterest,);
}

class InterestsInterface{
  List<InterestsModel> listofinterests;
}

class InterestsData extends InterestsInterface{
  InterestsData(){
    listofinterests = [
      InterestsModel("#Emotional"),
      InterestsModel("#Beauty & Style"),
      InterestsModel("#Entertainment"),
      InterestsModel("#Bollywood"),
      InterestsModel("#Comedy"),
      InterestsModel("#Sports"),
      InterestsModel("#Food"),
      InterestsModel("#Kollywood"),
      InterestsModel("#Tollywood"),
      InterestsModel("#Travel"),
      InterestsModel("#Gaming"),
      InterestsModel("#Learning"),
    ];

  }

}

