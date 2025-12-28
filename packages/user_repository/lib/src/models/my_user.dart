import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

class MyUser extends Equatable {
  final String uid;
  final String email;
  final String name;
  final String? role;

  const MyUser({
    required this.uid,
    required this.email,
    required this.name,
    required this.role,
  });

  static const empty = MyUser(uid: '', email: '', name: '', role: '');
  MyUser copyWith({String? id, String? email, String? name, String? role}) {
    return MyUser(
      uid: uid ?? uid,
      email: id ?? this.email,
      name: name ?? this.name,
      role: role ?? this.role,
    );
  }

  bool get isEmpty => this == MyUser.empty;
  bool get isNotEmpty => this != MyUser.empty;

  MyUserEntity toEntity() {
    return MyUserEntity(uid: uid, email: email, name: name, role: role);
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      uid: entity.uid,
      email: entity.email,
      name: entity.name,
      role: entity.role,
    );
  }

  @override
  List<Object?> get props => [uid, email, name, role];
}
