
class UserModel{
  String? email;
  String? uid;
  String? firstName;
  String? lastName;

  UserModel({this.email,this.uid,this.firstName,this.lastName});


  /// if we are receiving data from database.
  factory UserModel.fromMap(map){
    return UserModel(
      email: map['email'],
      uid: map['uid'],
      firstName: map['firstname'],
        lastName: map['lastname']
    );
  }

  /// if we are sending data to database.
  Map<String, dynamic> toMap(){
    return {
      'email': email,
      'uid': uid,
      'firstName': firstName,
      'lastName' : lastName,
    };
  }
}