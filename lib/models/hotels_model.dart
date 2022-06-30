

class HotelsModel {
  String? name;
  String? location;
  String? images;
  int? ratings;
  String? description;
  bool? isFavourite;

  HotelsModel({
    required this.isFavourite,
   required this.name,
   required this.description,
   required this.images,
   required this.location,
    required this.ratings,
  });

  HotelsModel.fromJson(Map<String, dynamic> json) {
    isFavourite = json['isFavourite'];
    name = json['name'];
    description = json['description'];
    images = json['images'];
    ratings = json['ratings'];
    location = json['location'];
  }
}





