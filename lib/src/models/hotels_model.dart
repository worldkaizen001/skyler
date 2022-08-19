

class HotelsModel {
  String? name;
  String? location;
  List<String>? images;
  int? ratings;
  String? description;
  bool? isFavourite;
  String? coverImage;

  HotelsModel({
    required this.coverImage,
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
    coverImage = json['coverImage'];
  }
}

List<HotelsModel> hotels = [
  HotelsModel(isFavourite: false, name: 'name', description: 'description', images: [], location: 'location', ratings: 5, coverImage: '')
];






