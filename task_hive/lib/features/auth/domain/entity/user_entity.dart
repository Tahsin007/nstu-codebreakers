class UserEntity {
  int? id;
  String? name;
  String? email;
  String? password;
  String? profilePictureUrl;
  String? createdAt;
  String? updatedAt;

  UserEntity({
    this.id,
    this.name,
    this.email,
    this.password,
    this.profilePictureUrl,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'user_id': id,
      'full_name': name,
      'email': email,
      'profile_picture': profilePictureUrl,
      'created_at': createdAt ?? DateTime.now().toIso8601String(),
      'updated_at': updatedAt ?? DateTime.now().toIso8601String(),
    };
  }
}
