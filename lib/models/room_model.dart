
class RoomsModel {
  String? roomType;
  int? price;
  String? images;
  String? description;


  RoomsModel({

    required this.roomType,
    required this.description,
    required this.images,
    required this.price,

  });

  RoomsModel.fromJson(Map<String, dynamic> json){
    roomType = json['roomType'];
    description = json['description'];
    images = json['images'];
    price = json['images'];
  }


}