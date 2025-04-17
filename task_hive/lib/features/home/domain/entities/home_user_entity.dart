class HomePageUserEntity {
  int? userId;
  String? name;
  String? email;
  String? profilePictureUrl;
  String? createdAt;
  String? updatedAt;

  HomePageUserEntity({
    this.name,
    this.email,
    this.profilePictureUrl,
    this.createdAt,
    this.updatedAt,
    required this.userId,
  });

  Map<String, dynamic> toJson() {
    return {
      'full_name': name,
      'email': email,
      'profile_picture': profilePictureUrl,
      'created_at': createdAt ?? DateTime.now().toIso8601String(),
      'updated_at': updatedAt ?? DateTime.now().toIso8601String(),
    };
  }

  HomePageUserEntity.fromJson(Map<String, dynamic> json)
      : userId = json['user_id'] ?? 0,
        name = json['full_name'] ?? 'No name',
        email = json['email'] ?? 'No email',
        profilePictureUrl = json['profile_picture'] ?? 'No profile picture',
        createdAt = json['created_at'] ?? DateTime.now().toIso8601String(),
        updatedAt = json['updated_at'] ?? DateTime.now().toIso8601String();
}
