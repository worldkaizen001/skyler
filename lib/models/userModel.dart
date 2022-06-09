
class UserModel{
  String? email;
  String? uid;
  String? username;

  UserModel({this.email,this.uid,this.username});


  /// if we are receiving data from database.
  factory UserModel.fromMap(map){
    return UserModel(
      email: map['email'],
      uid: map['uid'],
      username: map['username']
    );
  }

  /// if we are sending data to database.
  Map<String, dynamic> toMap(){
    return {
      'email': email,
      'uid': uid,
      'username': username,
    };
  }
}