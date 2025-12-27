import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_tracker/packa';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<MyUserEvent, MyUserState> {
  final UserRepo _userRepository;

  UserBloc({required UserRepo myUserRepository})
    : _userRepository = myUserRepository,
      super(const MyUserState.loading()) {
    on<GetMyUser>((event, emit) async {
      try {
        MyUser myUser = await _userRepository.getMyUser(event.myUserId);
        emit(MyUserState.success(myUser));
      } catch (e) {
        log(e.toString());
        emit(const MyUserState.failure());
      }
    });
  }
}
