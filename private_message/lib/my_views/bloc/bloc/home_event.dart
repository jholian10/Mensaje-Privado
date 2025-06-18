part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeLoginRequested extends HomeEvent {}

final class HomeCerrarSesion extends HomeEvent {}
