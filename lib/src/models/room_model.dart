
class RoomsModel {
  String? roomType;
  int? price;
  String? images;
  String? description;
  bool? isAvailable;
  String? coverImage;


  RoomsModel({

    required this.roomType,
    required this.description,
    required this.images,
    required this.price,
    required this.coverImage,
    required this.isAvailable,


  });

  RoomsModel.fromJson(Map<String, dynamic> json){
    roomType = json['roomType'];
    description = json['description'];
    images = json['images'];
    price = json['price'];
   isAvailable= json['isAvailable'];
   coverImage = json['coverImage'];
  }


}

