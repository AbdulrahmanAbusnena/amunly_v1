part of 'user_bloc.dart';

@immutable
abstract class MyUserEvent extends Equatable {
  const MyUserEvent();
  @override
  List<Object> get props => [];
}

class GetMyUser extends MyUserEvent {
  final String myUserId;

  const GetMyUser(this.myUserId);
  @override
  List<Object> get props => [myUserId];
}
