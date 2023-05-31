import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  final int status;
  final String message;
  final String? token;
  final User? user;

  Login({
    required this.status,
    required this.message,
    required this.token,
    required this.user,
  });

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        status: json["status"],
        message: json["message"],
        token: json["token"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "token": token,
        "user": user!.toJson(),
      };
}

class User {
  final int id;
  final String name;
  final dynamic address;
  final String contactNumber;
  final int isRegistered;
  final int storeId;
  final String type;
  final String username;
  final String priceType;

  User({
    required this.id,
    required this.name,
    required this.address,
    required this.contactNumber,
    required this.isRegistered,
    required this.storeId,
    required this.type,
    required this.username,
    required this.priceType,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        contactNumber: json["contact_number"],
        isRegistered: json["is_registered"],
        storeId: json["store_id"],
        type: json["type"],
        username: json["username"],
        priceType: json["price_type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "contact_number": contactNumber,
        "is_registered": isRegistered,
        "store_id": storeId,
        "type": type,
        "username": username,
        "price_type": priceType,
      };
}
