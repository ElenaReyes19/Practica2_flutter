class User {
  final int id;
  final String name;
  final String lasName;
  final String email;
  final String photo;
  final List<String> favoriteArtist;

  User(
      {required this.id,
      required this.name,
      required this.lasName,
      required this.email,
      required this.photo,
      required this.favoriteArtist});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        lasName: json['lasName'],
        email: json['email'],
        photo: json['photo'],
        favoriteArtist: List<String>.from(json['favoriteArtis']));
  }
}
