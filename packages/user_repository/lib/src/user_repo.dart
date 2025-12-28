import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/user_repository.dart';

abstract class UserRepo {
  Stream<User?> get user;
  // Sign in
  Future<void> signIn(String email, String password);
  // Signing out
  Future<void> logOut();
  // Signing Up
  Future<MyUser> signUp(MyUser myUser, String password);
  // Resetting the Password
  Future<void> resetPassword(String email);
  // setUserData
  Future<void> setUserData(MyUser user);
  // getUserData
  Future<MyUser> getMyUser(String myUserId);
}
