class Usermodel {
  String? id;
  String? name;
  String? email;
  String? profileImage;
  String? phoneNumber;
  String? about;
  String? createdAt;
  String? lastOnlineStatus;
  String? status;

  Usermodel(
      {this.email,
      this.profileImage,
      this.phoneNumber,
      this.id,
      this.name,
      this.status,
      this.createdAt,
      this.lastOnlineStatus,
      this.about});

  factory Usermodel.fromJson(Map<String, dynamic> json) {
    return Usermodel(
      email: json["email"],
      name: json["name"],
      profileImage: json["profile"],
      phoneNumber: json["phoneNumber"],
      id: json["id"],
      status: json["status"],
      about: json["about"],
      createdAt: json["createdAt"],
      lastOnlineStatus: json["lastOnlineStatus"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "email": email,
      "name": name,
      "profileImage": profileImage,
      "phoneNumber": phoneNumber,
      "id": id,
      "status": status,
      "about": about,
      "createdAt": createdAt,
      "lastOnlineStatus": lastOnlineStatus
    };
  }
}
