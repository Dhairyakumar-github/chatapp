class Usermodel {
  String? id;
  String? name;
  String? email;
  String? profileImage;
  String? phoneNumber;

  Usermodel({
    this.email,
    this.profileImage,
    this.phoneNumber,
    this.id,
    this.name,
  });

  factory Usermodel.fromJson(Map<String, dynamic> json) {
    return Usermodel(
      email: json["email"],
      name: json["name"],
      profileImage: json["profile"],
      phoneNumber: json["phoneNumber"],
      id: json["id"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "name": name,
      "profileImage": profileImage,
      "phoneNumber": phoneNumber,
      "id": id,
    };
  }
}
