class UserModel {
  String name;
  String email;
  String uid;
  String bio;
  String role;

  UserModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.bio,
    required this.role,
  });
  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'],
      email: data['email'],
      name: data['name'],
      bio: data['bio'],
      role: data['role'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'uid': uid, 'email': email, 'name': name, 'bio': bio, 'role': role};
  }
}
