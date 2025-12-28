import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

class MyUserEntity extends Equatable {
  final String uid;
  final String email;
  final String name;
  final String? role;
  const MyUserEntity({
    required this.uid,
    required this.email,
    required this.name,
    required this.role,
  });
  Map<String, Object?> toDocument() {
    return {'uid': uid, 'email': email, 'name': name, 'role': role};
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      uid: doc['uid'] as String,
      email: doc['email'] as String,
      name: doc['name'] as String,
      role: doc['role'] as String?,
    );
  }

  @override
  List<Object?> get props => [uid, email, name, role];

  @override
  String toString() {
    return '''UserEntity: {
    uid: $uid
    email: $email
    name: $name
    role: $role 

    };
  }''';
  }
}
