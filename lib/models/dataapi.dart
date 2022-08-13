class DataApi {
  String image;
  /*String name;
  String state;
  String gender;*/

  DataApi({
    required this.image,
    /*required this.name,
      required this.state,
      required this.gender*/
  });

  factory DataApi.fromJson(Map<String, dynamic> json) {
    return DataApi(
      image: json['image'],
    );
    /*name: json["name"],
      state: json["status"],
      gender: json["species"]*/

    //List? get results => null;
  }
}
